import 'package:flutter/material.dart';

extension ColorExtensions on Color {
  /// Applies a new opacity level to the color.
  ///
  /// This method replaces the deprecated `withOpacity` method from the Flutter material library.
  ///
  /// The `value` parameter should be a double between 0.0 and 1.0, inclusive.
  ///
  /// Example:
  ///
  /// ```dart
  /// Color originalColor = Color(0xFF0000FF); // Blue color
  /// Color semiTransparentColor = originalColor.applyOpacity(0.5);
  /// print(semiTransparentColor.alpha); // Output: 0.5
  /// ```
  ///
  /// [value] - The new opacity level to apply (must be between 0.0 and 1.0).
  ///
  /// Returns a new `Color` with the specified opacity level.
  Color applyOpacity(double value) {
    assert(value >= 0.0 && value <= 1);
    return withValues(alpha: value);
  }
}
