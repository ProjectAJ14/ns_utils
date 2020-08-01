import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ns_utils/constants.dart';

/// extension methods for List
///
extension ListExtenstions on List {
  ///List to JSON using[json.encode]
  ///
  String getJson() {
    String data = defaultString;
    try {
      data = json.encode(this);
    } catch (e, s) {
      debugPrint("ERROR in getJson $e \n $s");
    }
    return data;
  }
}
