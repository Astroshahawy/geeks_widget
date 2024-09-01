import 'package:formz/formz.dart';

enum NameValidationError { invalid }

class Name extends FormzInput<String, NameValidationError> {
  const Name.pure([String value = '']) : super.pure(value);
  const Name.dirty([String value = '']) : super.dirty(value);
  static String? reg;
  static final _nameRegex = RegExp(reg??r'[!@#<>?":_`~;[\]\\|=+)(*&^%\s-]');

  @override
  NameValidationError? validator(String? value) {
    return _nameRegex.hasMatch(value ?? '')
        ? null
        : NameValidationError.invalid;
  }
}
