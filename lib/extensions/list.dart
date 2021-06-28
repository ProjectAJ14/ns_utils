// Dart imports:
import 'dart:convert';

// Project imports:
import '../constants.dart';
import '../utils/logs.dart' show nsuLogs;

/// extension methods for List
///
// ignore: always_specify_types
extension ListExtensions on List {
  ///List to JSON using[json.encode]
  ///
  String toJson() {
    String data = defaultString;
    try {
      data = json.encode(this ?? defaultList);
    } on Exception catch (e, s) {
      nsuLogs("ERROR in getJson $e \n $s");
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
      nsuLogs("ERROR in getJson $e \n $s");
    }
    return data;
  }
}
