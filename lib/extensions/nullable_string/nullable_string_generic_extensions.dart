/// Extension on `String?` that provides additional utility methods.
extension NullableStringGenericExtensions on String? {
  /// Returns `true` if the string is `null` or empty.
  ///
  /// This getter is useful for checking if a nullable string is either
  /// `null` or contains no characters.
  ///
  /// Example:
  ///
  /// ```dart
  /// String? nonEmptyString = "Hello";
  /// String? emptyString = "";
  /// String? nullString;
  ///
  /// print(nonEmptyString.isNullOrEmpty); // Output: false
  /// print(emptyString.isNullOrEmpty); // Output: true
  /// print(nullString.isNullOrEmpty); // Output: true
  /// ```
  bool get isNullOrEmpty => this?.isEmpty ?? true;
}
