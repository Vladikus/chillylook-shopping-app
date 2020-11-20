import 'package:chilly_look_shopping/models/field_validator.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:chilly_look_shopping/models/field_validator.dart';

void main() {
  group('Validator', () {
    // @email
    test('Email Test', () {
      // var result = FieldValidator.validateEmail('');
      expect(FieldValidator.validateEmail(''), 'Please enter the email');
      expect(FieldValidator.validateEmail(' '),
          'Not valid email. Please enter valid email');
      expect(FieldValidator.validateEmail('email@'),
          'Not valid email. Please enter valid email');
      expect(FieldValidator.validateEmail('email@test.com'), null);
    });

    //*pass
    test('Password Test', () {
      expect(FieldValidator.validatePassword(''), 'Enter password');
      expect(FieldValidator.validatePassword('qwe12'), 'Password must be 6 characters or longer');
      expect(FieldValidator.validatePassword('qwe123'), null);
    });
  });
}
