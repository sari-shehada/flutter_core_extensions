import 'package:flutter_core_extensions/extensions/string/string_extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Empty String should return null', () {
    expect(''.valueOrNullIfEmpty(), null);
  });
  test('Non-empty String should return the same value', () {
    final String value = 'abc';
    expect(value, value);
  });
}
