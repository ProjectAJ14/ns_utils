import 'dart:convert';

import 'package:ns_utils/constants.dart';
import 'package:ns_utils/utils/logs.dart';

/// extension methods for List
///
extension ListExtensions on List {
  ///List to JSON using[json.encode]
  ///
  String toJson() {
    String data = defaultString;
    try {
      data = json.encode(this ?? defaultList);
    } catch (e, s) {
      nsuLogs("ERROR in getJson $e \n $s");
    }
    return data;
  }
}
