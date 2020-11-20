class FieldValidator {
  static String validateEmail(String value) {
    if (value.isEmpty) {
      return 'Please enter the email';
    }

    Pattern pattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

    RegExp regex = RegExp(pattern);

    if (!regex.hasMatch(value)) {
      return 'Not valid email. Please enter valid email';
    }

    return null;
  }

  static String validatePassword(String value) {
    if (value.isEmpty) return 'Enter password';

    if (value.length < 6) {
      return 'Password must be 6 characters or longer';
    }
    return null;
  }
}
