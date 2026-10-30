// 职责: 校验技能目录并生成或检查 README 中的技能表格。
// 关联文件:
//   catalog.json
//   README.md
//   tool/update_readme_test.dart

import 'dart:convert';
import 'dart:io';

const startMarker = '<!-- skills-table:start -->';
const endMarker = '<!-- skills-table:end -->';

Future<void> main(List<String> args) async {
  if (args.any((arg) => arg != '--check') || args.length > 1) {
    stderr.writeln('Usage: dart run tool/update_readme.dart [--check]');
    exitCode = 64;
    return;
  }
  try {
    final root = File.fromUri(Platform.script).parent.parent;
    final catalog = jsonDecode(
      await File('${root.path}/catalog.json').readAsString(),
    );
    final rows = validateCatalog(catalog);
    final readme = File('${root.path}/README.md');
    final original = await readme.readAsString();
    final updated = renderReadme(original, rows);
    if (args.contains('--check')) {
      if (original != updated) {
        stderr.writeln(
          'README table is out of date. Run tool/update_readme.dart.',
        );
        exitCode = 1;
        return;
      }
      stdout.writeln(
        'README table matches catalog.json (${rows.length} entries).',
      );
      return;
    }
    if (original != updated) {
      final temporary = File(
        '${readme.path}.$pid.${DateTime.now().microsecondsSinceEpoch}.tmp',
      );
      try {
        await temporary.writeAsString(updated, flush: true);
        await temporary.rename(readme.path);
      } finally {
        if (await temporary.exists()) await temporary.delete();
      }
    }
    stdout.writeln('README table updated (${rows.length} entries).');
  } on Object catch (error) {
    stderr.writeln('Cannot update README: $error');
    exitCode = 1;
  }
}

List<Map<String, dynamic>> validateCatalog(Object? data) {
  if (data is! List) throw const FormatException('Catalog must be an array.');
  final urls = <String>{};
  final rows = <Map<String, dynamic>>[];
  for (var index = 0; index < data.length; index++) {
    final item = data[index];
    if (item is! Map<String, dynamic>) {
      throw FormatException('Entry ${index + 1} must be an object.');
    }
    final row = Map<String, dynamic>.from(item);
    for (final key in ['name', 'description', 'url']) {
      final value = row[key];
      if (value is! String || value.trim().isEmpty) {
        throw FormatException(
          'Entry ${index + 1}: $key must be non-empty text.',
        );
      }
      row[key] = value.trim();
    }
    for (final key in ['when_to_use', 'category']) {
      if (row.containsKey(key) && row[key] is! String) {
        throw FormatException('Entry ${index + 1}: $key must be text.');
      }
    }
    if (row.containsKey('tags')) {
      final tags = row['tags'];
      if (tags is! List || tags.any((tag) => tag is! String)) {
        throw FormatException('Entry ${index + 1}: tags must be a text array.');
      }
    }
    final url = row['url'] as String;
    final uri = Uri.tryParse(url);
    if (uri == null ||
        uri.scheme != 'https' ||
        uri.host.isEmpty ||
        uri.userInfo.isNotEmpty ||
        RegExp(r'[\x00-\x20\x7f]').hasMatch(url)) {
      throw FormatException('Entry ${index + 1}: expected a public HTTPS URL.');
    }
    if (!urls.add(url)) throw FormatException('Duplicate URL: $url');
    rows.add(row);
  }
  return rows;
}

String renderReadme(String original, List<Map<String, dynamic>> rows) {
  if (startMarker.allMatches(original).length != 1 ||
      endMarker.allMatches(original).length != 1) {
    throw const FormatException(
      'README needs exactly one pair of table markers.',
    );
  }
  final start = original.indexOf(startMarker) + startMarker.length;
  final end = original.indexOf(endMarker);
  if (end < start)
    throw const FormatException('README table markers are reversed.');
  final newline = original.contains('\r\n') ? '\r\n' : '\n';
  final lines = <String>[
    '',
    '',
    '| 技能 | 简介 | 分类 | 标签 |',
    '| --- | --- | --- | --- |',
    for (final row in rows) _renderRow(row),
    '',
    '',
  ];
  return original.substring(0, start) +
      lines.join(newline) +
      original.substring(end);
}

String _renderRow(Map<String, dynamic> row) {
  final category = (row['category'] as String? ?? '').trim();
  final tags = (row['tags'] as List? ?? const [])
      .cast<String>()
      .map((tag) => tag.trim())
      .where((tag) => tag.isNotEmpty)
      .join('、');
  // HTML links preserve URL parentheses and query strings inside Markdown tables.
  final link =
      '<a href="${_attribute(row['url'] as String)}">'
      '${_cell(row['name'] as String)}</a>';
  return '| $link | ${_cell(row['description'] as String)} | '
      '${_cell(category.isEmpty ? '无' : category)} | '
      '${_cell(tags.isEmpty ? '无' : tags)} |';
}

String _attribute(String value) => value
    .replaceAll('&', '&amp;')
    .replaceAll('"', '&quot;')
    .replaceAll('<', '&lt;')
    .replaceAll('>', '&gt;')
    .replaceAll('|', '&#124;');

String _cell(String value) =>
    _attribute(value)
        .replaceAll('\\', '&#92;')
        .replaceAll('`', '&#96;')
        .replaceAll('*', '&#42;')
        .replaceAll('_', '&#95;')
        .replaceAll('[', '&#91;')
        .replaceAll(']', '&#93;')
        .replaceAll(RegExp(r'\r\n|\r|\n'), '<br>');
