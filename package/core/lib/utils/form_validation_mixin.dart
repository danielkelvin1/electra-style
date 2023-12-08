mixin FormValidationMixin {
  String? emailValidation(String? value) {
    if (value == null || value.toString().isEmpty) {
      return 'This is required';
    }
    final regex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (!regex.hasMatch(value)) {
      return 'Invalid email';
    }
    return null;
  }

  String? passwordValidation(String? value) {
    final regex = RegExp(r'^.*(?=.*?[A-Z])(?=.*[a-z])(?=.*[0-9]).*$');
    if (value == null || value.toString().trim().isEmpty) {
      return 'This is required';
    }
    if (value.toString().length < 8) {
      return 'Password must be more than 8 characters';
    }
    if (!regex.hasMatch(value)) {
      return 'Passwords must have uppercase, lowercase letters and contain numbers';
    }
    return null;
  }
}
