extension StringValidationExtensions on List<String> {
  //TODO: Add Doc
  List<String> validateRequiredField(String? value) {
    //TODO: Seperate this logic Code-1
    if (value == null || value.isEmpty) {
      add('This Field is required');
    }
    return this;
  }

  //TODO: Add Doc
  List<String> validateSpecialCharachtersProhibited(String? value) {
    //TODO: Seperate this logic Code-1
    if (value == null || value.isEmpty) {
      return this;
    }
    if (!RegExp(r'^[a-zA-Z0-9]+$').hasMatch(value)) {
      add('Invalid Characters Entered\n  only alphanumeric characters are allowed for this field');
    }
    return this;
  }

  //TODO: Add Doc
  List<String> validateNumericOnlyField(String? value) {
    //TODO: Seperate this logic Code-1
    if (value == null || value.isEmpty) {
      return this;
    }
    if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      add('Only numbers are allowed to this field!');
    }
    return this;
  }
}
