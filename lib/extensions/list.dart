import 'dart:convert';

import '../constants.dart';
import '../src.dart';

/// extension methods for List
///
// ignore: always_specify_types
extension ListExtensions on List {
  ///List to JSON using[json.encode]
  ///
  String toJson() {
    String data = defaultString;
    try {
      data = json.encode(this);
    } on Exception catch (e, s) {
      errorLogsNS("ERROR in getJson", e, s);
    }
    return data;
  }

  ///List to coma separated Value
  ///
  String toComaSeparatedValues() {
    String data = toString();
    try {
      data = join(', ');
    } on Exception catch (e, s) {
      errorLogsNS("ERROR in toComaSeparatedValues", e, s);
    }
    return data;
  }
}
