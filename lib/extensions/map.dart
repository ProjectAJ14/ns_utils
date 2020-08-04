import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ns_utils/constants.dart';
import 'package:ns_utils/methods/conversion.dart';

/// extension methods for Map
///
extension MapExtensions on Map {
  /// Reads a [key] value of [bool] type from [Map].
  ///
  /// If value is NULL or not [bool] type return default value [defaultBool]
  ///
  bool getBool(String key, {bool defaultValue = defaultBool}) {
    Map data = this;
    if (data == null) {
      data = defaultMap;
    }
    if (data.containsKey(key)) if (data[key] is bool)
      return this[key] ?? defaultValue;
    debugPrint("Map.getBool[$key] has incorrect data : ${data[key]}");
    return defaultValue;
  }

  /// Reads a [key] value of [int] type from [Map].
  ///
  /// If value is NULL or not [int] type return default value [defaultInt]
  ///
  int getInt(String key, {int defaultValue = defaultInt}) {
    Map data = this;
    if (data == null) {
      data = defaultMap;
    }
    if (data.containsKey(key)) return toInt(data[key]);
    debugPrint("Map.getInt[$key] has incorrect data : ${data[key]}");
    return defaultValue;
  }

  /// Reads a [key] value of [double] type from [Map].
  ///
  /// If value is NULL or not [double] type return default value [defaultDouble]
  ///
  double getDouble(String key, {double defaultValue = defaultDouble}) {
    Map data = this;
    if (data == null) {
      data = defaultMap;
    }
    if (data.containsKey(key)) return toDouble(data[key]);
    debugPrint("Map.getDouble[$key] has incorrect data : ${data[key]}");
    return defaultValue;
  }

  /// Reads a [key] value of [String] type from [Map].
  ///
  /// If value is NULL or not [String] type return default value [defaultString]
  ///.
  String getString(String key, {String defaultValue = defaultString}) {
    Map data = this;
    if (data == null) {
      data = defaultMap;
    }
    if (data.containsKey(key)) if (data[key] is String)
      return data[key] ?? defaultValue;
    debugPrint("Map.getString[$key] has incorrect data : ${data[key]}");
    return defaultValue;
  }

  /// Reads a [key] value of [List] type from [Map].
  ///
  /// If value is NULL or not [List] type return empty List[defaultList]
  ///
  List getList(String key) {
    Map data = this;
    if (data == null) {
      data = defaultMap;
    }
    if (data.containsKey(key)) if (data[key] is List)
      return data[key] ?? defaultList;
    debugPrint("Map.getString[$key] has incorrect data :  ${data[key]}");

    return defaultList;
  }

  /// Reads a [key] value of [List] type from [Map].
  ///
  /// If value is NULL or not [List] type return default value [defaultString]
  ///
  Map getMap(String key) {
    Map data = this;
    if (data == null) {
      data = defaultMap;
    }
    if (data.containsKey(key)) if (data[key] is Map)
      return data[key] ?? defaultMap;
    debugPrint("Map.getMap[$key] has incorrect data :  ${data[key]}");
    return defaultMap;
  }

  ///Add value to map if value is not null
  ///
  T add<T>({@required String key, @required T value}) =>
      this.putIfAbsent(key, () => value);

  ///Map to JSON using[json.encode]
  ///
  String toJson() {
    String data = "{}";
    try {
      data = json.encode(this ?? defaultMap);
    } catch (e, s) {
      debugPrint("Error in toJson\n\n *$this* \n\n $e\n\n$s");
    }
    return data;
  }

  ///Convert map to a String withIndent
  ///
  String toPretty() {
    String data = defaultString;
    try {
      JsonEncoder encoder = new JsonEncoder.withIndent('  ');
      data = encoder.convert(this);
    } catch (e, s) {
      debugPrint("Error in toPretty\n\n *$this* \n\n $e\n\n$s");
    }
    return data;
  }
}
