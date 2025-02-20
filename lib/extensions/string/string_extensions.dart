extension StringExtensions on String {
  /// Returns `null` if the string is empty; otherwise, returns the string itself.
  ///
  /// This method is useful for converting empty strings to `null` values in a concise manner.
  ///
  /// Example:
  ///
  /// ```dart
  /// String? nonEmptyString = "Hello";
  /// String? emptyString = "";
  ///
  /// print(nonEmptyString.orNullIfEmpty()); // Output: "Hello"
  /// print(emptyString.orNullIfEmpty()); // Output: null
  String? get orNullIfEmpty => isEmpty ? null : this;
}
