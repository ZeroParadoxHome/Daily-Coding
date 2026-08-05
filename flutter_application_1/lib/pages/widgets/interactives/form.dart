import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(body: SafeArea(child: const MyFormWidget())),
  );
}

class MyFormWidget extends StatefulWidget {
  const MyFormWidget({super.key});

  @override
  State<MyFormWidget> createState() => _MyFormWidgetState();
}

class _MyFormWidgetState extends State<MyFormWidget> {
  final GlobalKey<FormState> _formKey = .new();
  final TextEditingController _textEditingController = .new(
    text: "My Text Field",
  );
  String text = "";

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  String? validateName({required String? value}) {
    if (value == null || value.isEmpty) {
      return "This field can not be empty";
    }
    if (!RegExp(
      r"^[a-zA-Z\u00C0-\u024F'-]+(?:\s[a-zA-Z\u00C0-\u024F'-]+)+$",
    ).hasMatch(value)) {
      return "Please enter your name in a correct form!";
    }
    return null;
  }

  String? validateEmail({required String? value}) {
    if (value == null || value.isEmpty) {
      return "This field can not be empty";
    }
    if (!EmailValidator.validate(value)) {
      return "Looks like your email address is wrong";
    }
    return null;
  }

  String? validatePassword({required String? value}) {
    if (value == null || value.isEmpty) {
      return "This field can not be empty";
    }
    if (value.length < 8) {
      return "Password must be more than 8 characters";
    }
    if (!RegExp(
      r"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$",
    ).hasMatch(value)) {
      return "Password must include a strong combination";
    }
    return null;
  }

  String? validateIPAddress({required String? value}) {
    if (value == null || value.isEmpty) {
      return "This field can not be empty";
    }
    if (!RegExp(
      r"\b(?:(?:2(?:[0-4][0-9]|5[0-5])|[0-1]?[0-9]?[0-9])\.){3}(?:(?:2([0-4][0-9]|5[0-5])|[0-1]?[0-9]?[0-9]))\b",
    ).hasMatch(value)) {
      return "Your IP address format is not correct";
    }
    return null;
  }

  String? validateURL({required String? value}) {
    if (value == null || value.isEmpty) {
      return "This field can not be empty";
    }
    if (!RegExp(
      r"^(https?:\/\/)?([\da-z\.-]+\.[a-z\.]{2,6}|[\d\.]+)([\/:?=&#]{1}[\da-z\.-]+)*[\/\?]?$",
    ).hasMatch(value)) {
      return "URL address is not correct";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    child: Form(
      key: _formKey,
      autovalidateMode: .onUserInteraction,
      // onChanged: () => print("Changed..."),
      child: Padding(
        padding: const .all(15.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              autofocus: true,
              initialValue: "John Doe",
              textInputAction: .next,
              // onFieldSubmitted: (String value) => print("Submitted."),
              decoration: InputDecoration(
                labelText: "Name",
                hintText: "Your full name (first name + last name)",
                helperText: "This name will be used to show in your profile",
                filled: true,
                fillColor: Colors.blue[300],
                icon: const Icon(Icons.account_circle_rounded),
                border: OutlineInputBorder(borderRadius: .circular(25)),
              ),
              validator: (String? value) => validateName(value: value),
            ),
            TextFormField(
              keyboardType: .emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Your email address",
                helperText: "Must be a legit email address",
                prefixIcon: const Icon(Icons.email_rounded),
                suffixText: "@gmail.com",
              ),
              validator: (String? value) => validateEmail(value: value),
            ),
            TextFormField(
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "A strong password",
                helperText:
                    "Password > 8 characters (included numbers & symbols)",
                suffixIcon: const Icon(Icons.remove_red_eye_rounded),
              ),
              validator: (String? value) => validatePassword(value: value),
            ),
            TextFormField(
              keyboardType: .number,
              decoration: InputDecoration(
                labelText: "IP",
                hintText: "Your company static IP address",
                helperText: "State your company given IP address",
                prefixText: "127.0.0.1: ",
              ),
              validator: (String? value) => validateIPAddress(value: value),
            ),
            TextFormField(
              keyboardType: .url,
              decoration: InputDecoration(
                labelText: "URL",
                hintText: "Your post link",
                helperText: "Should start with http:// or https://",
              ),
              validator: (String? value) => validateURL(value: value),
            ),
            TextFormField(
              maxLines: 3,
              maxLength: 9,
              decoration: InputDecoration(
                labelText: "Description",
                hintText: "Optional",
                helperText: "Do not leave this empty",
                contentPadding: .all(25),
                focusedBorder: OutlineInputBorder(borderRadius: .circular(50)),
              ),
              cursorColor: Colors.purple,
              cursorHeight: 25.0,
              cursorWidth: 150.0,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "This field can not be empty";
                }
                return null;
              },
            ),
            TextFormField(
              readOnly: true,
              decoration: InputDecoration(
                labelText: "Ignored",
                hintText: "Leave me alone",
                helperText: "Disabled",
                counterText: "256",
              ),
            ),
            TextField(
              // enabled: false,
              controller: _textEditingController,
              textDirection: .ltr,
              textAlign: .center,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter(
                  RegExp(r"\d"),
                  allow: false,
                  replacementString: "*",
                ),
                LengthLimitingTextInputFormatter(5),
              ],
            ),
            const SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: .center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => _formKey.currentState!.validate(),
                  child: const Text("Submit"),
                ),
                const SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: () => _formKey.currentState!.reset(),
                  child: const Text("Reset"),
                ),
                const SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: () =>
                      setState(() => text = _textEditingController.text),
                  child: const Text("Display"),
                ),
              ],
            ),
            const SizedBox(height: 15.0),
            Text(
              text,
              style: TextStyle(
                color: Colors.green,
                fontSize: 30,
                fontWeight: .bold,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
