// Dart imports:
import 'dart:convert';
import 'dart:math' as math;

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../constants.dart';
import '../methods/conversion.dart';
import '../utils/logs.dart';

extension StringExtensions on String {
  ///JSON String to Map using[json.decode]
  ///
  // ignore: always_specify_types
  Map toMap() {
    // ignore: always_specify_types
    Map data = {};
    try {
      if (this == null || this == "") return data;
      data = json.decode(this);
    } on Exception catch (e, s) {
      nsuLogs("Error in toMap\n\n *$this* \n\n $e\n\n$s");
    }
    return data;
  }

  ///JSON String to List using[json.decode]
  ///
  // ignore: always_specify_types
  List toList() {
    // ignore: always_specify_types
    List data = [];
    try {
      data = json.decode(this ?? "[]");
    } on Exception catch (e, s) {
      nsuLogs("ERROR in toList $e \n $s");
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

  /// Parses the string as an int or 0 [defaultDouble].
  ///
  double get toDOUBLE => toDouble(this);

  /// Return a null if the string is null or empty
  ///
  String get asNullIfEmpty => isEmptyOrNull ? null : this;

  /// Return a empty if the string is null or empty
  ///
  String get asEmptyIfEmptyOrNull => isEmptyOrNull ? '' : this;

  /// If string is not blank[isNotBlank] append the string with a ', '
  ///
  String get addSpaceAndCommaIfNotEmpty => isNotBlank ? '$this, ' : '';

  /// Convert this string into boolean.
  ///
  /// Returns `true` if this string is any of these
  /// values: `"true"`, `"yes"`, `"1"`,
  /// or if the string is a number and greater than 0, `false`
  /// if less than 1. This is also case insensitive.
  ///
  bool get asBool {
    String s = trim().toLowerCase();
    num n;
    try {
      n = num.parse(s);
    } on Exception catch (e, s) {
      n = -1;
      nsuLogs('asBool invalid e:$e s:$s');
    }
    return s == 'true' || s == 'yes' || n > 0;
  }

  /// Parse string to [DateTime] or [Null]
  ///
  DateTime toDateTime({dynamic context}) {
    String value = this;
    DateTime tempDateTime;
    if (value.isEmptyOrNull) {
      nsuLogs('toDateTime invalid $value context:$context');
      return tempDateTime;
    }
    if (value.startsWith('-00')) {
      nsuLogs('toDateTime invalid $value context:$context');
      value = value.replaceFirst('-00', '');
    }
    try {
      tempDateTime = DateTime.parse(value);
    } on Exception catch (e, s) {
      nsuLogs("toDateTime $context  $value : $e\n$s");
    }
    return tempDateTime;
  }

  /// Parse string to [Color]
  ///
  Color toColor() {
    Color color =
        Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    try {
      String hexColor = replaceAll("#", "");
      if (hexColor.length == 6) {
        hexColor = "0xFF$hexColor";
      }
      if (hexColor.length == 10) {
        color = Color(int.parse(hexColor));
      }
    } on Exception catch (e) {
      nsuLogs(
        'toColor $e',
      );
    }
    return color;
  }

  ///Add prefix if not empty else return empty string
  ///
  String addPrefixIfNotEmpty(String prefix) {
    if (isEmptyOrNull) {
      return '';
    }
    return '$prefix$this';
  }

  ///Add prefix if not empty else return empty string
  ///
  String get showDashIfEmpty => isEmptyOrNull ? '-' : this;
}
