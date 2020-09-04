import 'package:flutter/material.dart';
import 'package:ns_utils/utils/logs.dart';

const Pattern namePattern = r"^[a-zA-Z. ']+$";

const Pattern passwordPattern = r'^[a-zA-Z0-9@#$%]{6,}$';

const Pattern emailPattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

const String enter = "Enter ";
const String enterValidEmail = "Enter valid email";
const String enterValid = "Enter valid ";
const String enterEmail = "Enter email";
const String enterPassword = "Enter password";
const String enterValidPassword = "Enter valid password";
const String emptyMessage = "Can't be Empty";
const String passwordValidationMsg =
    "Minimum 6 characters,include upper and lower case letters,numbers,symbols(@,#,\$,%)";

class ValidatorUtil {
  static bool isFormValid(GlobalKey<FormState> _formKey) {
    try {
      final form = _formKey.currentState;
      if (form.validate()) {
        form.save();

        nsuLogs('$_formKey isFormValid:true');

        return true;
      }
      nsuLogs('$_formKey isFormValid:false');
    } catch (e, s) {
      nsuLogs('$_formKey isFormValid $e\n$s');
    }
    return false;
  }

  static String validateEmail(
    String value, {
    String invalidMessage,
  }) {
    nsuLogs("validateEmail : $value ");

    if (value.isEmpty) return enterEmail;

    if (hasMatch(pattern: emailPattern, value: value)) return null;

    return invalidMessage ?? enterValidEmail;
  }

  static String validatePassword(String value) {
    nsuLogs("validatePassword : $value ");

    if (value.isEmpty) return enterPassword;

    if (hasMatch(pattern: passwordPattern, value: value)) return null;

    return passwordValidationMsg;
  }

  static String validateName(String value, String label) {
    nsuLogs("validateName : $value ");

    if (value.isEmpty) return enter + label;

    if (hasMatch(pattern: namePattern, value: value)) return null;

    return enterValid + label;
  }

  static String validateEmptyCheck(String value) {
    if (value.isEmpty) return emptyMessage;

    return null;
  }

  static String validateEmpty(String value, String label) {
    if (value.isEmpty) return enter + label;

    return null;
  }

  static bool hasMatch({
    @required Pattern pattern,
    @required String value,
  }) {
    RegExp regex = new RegExp(pattern);

    bool result = regex.hasMatch(value);

    nsuLogs('hasMatch $pattern $value => $result');

    return result;
  }
}
