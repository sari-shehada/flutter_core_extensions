import 'package:flutter/material.dart';
import 'package:flutter_core_extensions/extensions/color/color_extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('applyOpacity returns correct alpha value', () {
    final color = Color.fromARGB(1, 0, 0, 0);

    // Test for a valid value
    final newColor = color.applyOpacity(0.5);
    expect(newColor.a, 0.5);

    // Test for boundary value 0.0
    final newColorMin = color.applyOpacity(0.0);
    expect(newColorMin.a, 0.0);

    // Test for boundary value 1.0
    final newColorMax = color.applyOpacity(1.0);
    expect(newColorMax.a, 1.0);
  });

  test(
    'applyOpacity throws assertion error for invalid value',
    () {
      final color = Color.fromARGB(1, 0, 0, 0);

      expect(() => color.applyOpacity(-0.1), throwsA(isA<AssertionError>()));
      expect(() => color.applyOpacity(1.1), throwsA(isA<AssertionError>()));
    },
  );
}
