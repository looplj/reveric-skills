// 职责: 验证目录校验、表格转义和 CLI 检查不会破坏 README。
// 关联文件:
//   tool/update_readme.dart
//   catalog.json
//   README.md

import 'dart:convert';
import 'dart:io';

import 'update_readme.dart' as generator;

void expect(bool condition, String message) {
  if (!condition) throw StateError(message);
}

void rejects(void Function() action, String message) {
  try {
    action();
  } on FormatException {
    return;
  }
  throw StateError(message);
}

Future<void> main() async {
  final entry = <String, dynamic>{
    'name': 'Name | [one]',
    'description': 'First\n<script> & **second**',
    'url': 'https://example.com/a(b)?x=1&y=2#section',
    'when_to_use': 'DO_NOT_RENDER_THIS',
    'tags': ['a|b', 'c'],
  };
  const before = 'Keep introduction.\n<!-- skills-table:start -->';
  const after = '<!-- skills-table:end -->\nKeep footer.\n';
  const readme = '$before\nold table\n$after';
  final rows = generator.validateCatalog([entry]);
  final rendered = generator.renderReadme(readme, rows);
  expect(rendered.startsWith(before), 'Introduction changed');
  expect(rendered.endsWith(after), 'Footer changed');
  expect(
    rendered.contains('Name &#124; &#91;one&#93;'),
    'Name was not escaped',
  );
  expect(
    rendered.contains('<br>&lt;script&gt; &amp;'),
    'HTML/newline not escaped',
  );
  expect(rendered.contains('a(b)?x=1&amp;y=2#section'), 'URL target changed');
  expect(
    !rendered.contains('DO_NOT_RENDER_THIS'),
    'when_to_use leaked into table',
  );
  expect(generator.renderReadme(rendered, rows) == rendered, 'Not idempotent');
  final crlf = readme.replaceAll('\n', '\r\n');
  expect(
    !RegExp(r'(?<!\r)\n').hasMatch(generator.renderReadme(crlf, rows)),
    'CRLF was not preserved',
  );
  expect(
    generator.renderReadme(readme, []).contains('| 技能 |'),
    'Empty table lost header',
  );
  rejects(
    () => generator.validateCatalog([entry, entry]),
    'Duplicate URL accepted',
  );
  for (final change in [
    {'name': ''},
    {'url': 'http://example.com'},
    {'url': 'https://user:secret@example.com'},
    {'url': 'https://example.com/\nmalformed'},
    {
      'tags': [1],
    },
    {'when_to_use': 7},
    {'category': null},
  ]) {
    rejects(
      () => generator.validateCatalog([
        {...entry, ...change},
      ]),
      'Invalid entry accepted: $change',
    );
  }
  for (final malformed in [
    'No markers',
    '${generator.endMarker}${generator.startMarker}',
    '$readme${generator.startMarker}',
  ]) {
    rejects(
      () => generator.renderReadme(malformed, rows),
      'Invalid markers accepted',
    );
  }

  final fixture = await Directory.systemTemp.createTemp('reveric-readme-test-');
  try {
    final tool = await Directory('${fixture.path}/tool').create();
    final source = File.fromUri(Platform.script.resolve('update_readme.dart'));
    final script = await source.copy('${tool.path}/update_readme.dart');
    final catalog = File('${fixture.path}/catalog.json');
    final output = File('${fixture.path}/README.md');
    await catalog.writeAsString(jsonEncode([entry]));
    await output.writeAsString(readme);
    Future<ProcessResult> run(List<String> arguments) => Process.run(
      Platform.resolvedExecutable,
      [script.path, ...arguments],
      workingDirectory: fixture.path,
    );
    expect((await run(['--check'])).exitCode == 1, 'Stale table passed check');
    expect(await output.readAsString() == readme, 'Check modified README');
    expect((await run([])).exitCode == 0, 'Generation failed');
    expect(
      (await run(['--check'])).exitCode == 0,
      'Generated table failed check',
    );
    final generated = await output.readAsString();
    await catalog.writeAsString(
      jsonEncode([
        {...entry, 'when_to_use': 'Changed only here'},
      ]),
    );
    expect(
      (await run(['--check'])).exitCode == 0,
      'Hidden field changed table',
    );
    await catalog.writeAsString(
      jsonEncode([
        {...entry, 'description': 'Visible change'},
      ]),
    );
    expect(
      (await run(['--check'])).exitCode == 1,
      'Visible change was not detected',
    );
    expect(
      await output.readAsString() == generated,
      'Failed check wrote output',
    );
    await catalog.writeAsString('invalid JSON');
    expect((await run([])).exitCode == 1, 'Invalid JSON passed');
    expect(
      await output.readAsString() == generated,
      'Invalid input corrupted output',
    );
    expect(
      (await run(['--unknown'])).exitCode == 64,
      'Unknown option accepted',
    );
  } finally {
    await fixture.delete(recursive: true);
  }
  stdout.writeln('All catalog and README checks passed.');
}
