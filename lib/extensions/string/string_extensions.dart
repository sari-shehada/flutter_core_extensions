extension StringExtensions on String {
  String? valueOrNullIfEmpty() {
    return isEmpty ? null : this;
  }
}
