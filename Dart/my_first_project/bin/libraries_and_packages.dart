import 'package:email_validator/email_validator.dart';
import 'dart:math' show Random;
import 'dart:convert' as cnv;

class CheckEmailValidation1 {
  final String email2;
  CheckEmailValidation1({required this.email2});
  bool isValid2() => EmailValidator.validate(email2);
}

class CheckEmailValidation2 {
  static bool isValid3({required String email3}) =>
      EmailValidator.validate(email3);
}

class CheckEmailValidation3 {
  final String _value;
  CheckEmailValidation3({required String email4}) : _value = email4;
  bool isValid4() => EmailValidator.validate(_value);
  String get value => _value;
}

extension EmailValidatorGuardian on String {
  bool get isValid5 => EmailValidator.validate(this);
}

class GenerateRandomKey {
  static final Random _value = Random();
  static String generateKey({int length = 32}) {
    List<int> values = List<int>.generate(length, (i) => _value.nextInt(256));
    return cnv.base64Url.encode(values);
  }
}

void main() {
  const String email1 = "JohnDoe@ntu.com";
  final bool isValid1 = EmailValidator.validate(email1);
  print("Is email valid? ${isValid1 ? "Yes, it is." : "No, it isn't."}");
  CheckEmailValidation1 validation1 = CheckEmailValidation1(email2: "JohnDoe@");
  print(
    "Is email valid? ${validation1.isValid2() ? "Yes, it is." : "No, it isn't."}",
  );
  print(
    "Is email valid? ${CheckEmailValidation2.isValid3(email3: "JohnDoe@gmail.com") ? "Yes, it is." : "No, it isn't."}",
  );
  CheckEmailValidation3 email5 = CheckEmailValidation3(email4: "");
  print(
    "Is email valid? ${email5.isValid4() ? "Yes, it is." : "No, it isn't."}",
  );
  final email6 = "abc@yahoo.com";
  print("Is email valid? ${email6.isValid5 ? "Yes, it is." : "No, it isn't."}");
  for (int i = 1; i <= 5; i++) {
    print(GenerateRandomKey.generateKey(length: 32));
  }
}
