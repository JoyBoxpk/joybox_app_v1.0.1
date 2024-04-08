class FieldValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Please enter email address";
    }
    if (!RegExp(r"^[a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+$").hasMatch(value)) {
      return "Invalid email address";
    }
    return null;
  }

  static String? validatePassword(String? value) {
    String _errorMessage = '';

    if (value == null || value.trim().length < 6) {
      _errorMessage += 'Password must be longer than 6 characters.\n';
    }

    // Contains at least one uppercase letter
    if (!value!.contains(RegExp(r'[A-Z]'))) {
      _errorMessage += '• Uppercase letter is missing.\n';
    }

    // Contains at least one lowercase letter
    if (!value.contains(RegExp(r'[a-z]'))) {
      _errorMessage += '• Lowercase letter is missing.\n';
    }

    // Contains at least one digit
    if (!value.contains(RegExp(r'[0-9]'))) {
      _errorMessage += '• Digit is missing.\n';
    }

    // Contains at least one special character
    if (!value.contains(RegExp(r'[!@#%^&*(),.?":{}|<>]'))) {
      _errorMessage += '• Special character is missing.\n';
    }

    // If there are no error messages, the password is valid
    return _errorMessage.isEmpty ? null : _errorMessage;
  }

  static String? validateConfirmPassword(String? value, String? value1) {
    if (value == null || value.trim().length < 6) {
      return "Confirm Password must be atleast 6 characters long";
    }
    if (value != value1) {
      return "Password does not match";
    }
    return null;
  }

  static String? validateFullname(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter your full name";
    }
    return null;
  }
}
