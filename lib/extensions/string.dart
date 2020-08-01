import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:ns_utils/constants.dart';
import 'package:ns_utils/methods/conversion.dart';

extension StringExtensions on String {
  ///JSON String to Map  using[json.decode]
  ///
  Map toMap() {
    Map data = Map();
    try {
      if (this == null || this == "") return data;
      data = json.decode(this);
    } catch (e, s) {
      debugPrint("Error in toMap\n\n *$this* \n\n $e\n\n$s");
    }
    return data;
  }

  List toList() {
    List data = List();
    try {
      data = json.decode(this ?? "[]");
    } catch (e, s) {
      debugPrint("ERROR in getListFromJson $e \n $s");
    }
    return data;
  }

  /// Return a bool if the string is null or empty
  ///
  bool get isEmptyOrNull => this == null || isEmpty;

  /// Returns true if s is neither null, empty nor is solely made of whitespace characters.
  ///
  bool get isNotBlank => this != null && trim().isNotEmpty;

  /// Parses the string as an int or 0 [defaultInt].
  ///
  int get toINT => toInt(this);

  /// Parses the string as an int or 0.0 [defaultDouble].
  ///
  double get toDOUBLE => toDouble(this);

  /// Convert this string into boolean.
  ///
  /// Returns `true` if this string is any of these values: `"true"`, `"yes"`, `"1"`, or if the string is a number and greater than 0, `false` if less than 1. This is also case insensitive.
  bool get asBool {
    var s = this.trim().toLowerCase();
    num n;
    try {
      n = num.parse(s);
    } catch (e) {
      n = -1;
    }
    return s == 'true' || s == 'yes' || n > 0;
  }

  /// Parse string to [DateTime] or [Null]
  ///
  DateTime toDateTime({dynamic context}) {
    String value = this;
    DateTime tempDateTime;
    if (value.isEmptyOrNull) {
      debugPrint('toDateTime invalid $value context:$context');
      return tempDateTime;
    }
    if (value.startsWith('-00')) {
      debugPrint('toDateTime invalid $value context:$context');
      value = value.replaceFirst('-00', '');
    }
    try {
      tempDateTime = DateTime.parse(value);
    } catch (e, s) {
      debugPrint("toDateTime $context  $value : $e\n$s");
    }
    return tempDateTime;
  }
}
