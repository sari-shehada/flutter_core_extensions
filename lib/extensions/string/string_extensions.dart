extension StringExtensions on String {
  /// Returns `null` if the string is empty; otherwise, returns the string itself.
  ///
  /// This is useful when you want to treat empty strings as absent values,
  /// for example when working with nullable form fields or optional parameters.
  ///
  /// ### Example
  /// ```dart
  /// String name = '';
  /// String? result = name.orNullIfEmpty; // result is null
  ///
  /// name = 'Sari';
  /// result = name.orNullIfEmpty; // result is 'Sari'
  /// ```
  ///
  /// ### Example with TextEditingController
  /// ```dart
  /// final controller = TextEditingController();
  ///
  /// // User submits the form with an empty field
  /// String? name = controller.text.orNullIfEmpty;
  ///
  /// // name will be `null` if the field was left blank
  /// ```
  String? get orNullIfEmpty => isEmpty ? null : this;
}
