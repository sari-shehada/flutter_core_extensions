extension StringExtensions on String {
  //TODO: Add Doc
  String? valueOrNullIfEmpty() {
    return isEmpty ? null : this;
  }
}
