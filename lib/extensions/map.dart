import 'dart:convert';

import '../constants.dart';
import '../src.dart';

/// extension methods for Map
///
// ignore: always_specify_types
extension MapExtensions on Map {
  /// Reads a [key] value of [bool] type from [Map].
  ///
  /// If value is NULL or not [bool] type return default value [defaultBool]
  ///
  bool getBool(String key, {bool defaultValue = defaultBool}) {
    if (containsKey(key)) {
      if (this[key] is bool) {
        return this[key] ?? defaultValue;
      }
    }
    errorLogsNS("Map.getBool[$key] has incorrect data : ${this[key]}");
    return defaultValue;
  }

  /// Reads a [key] value of [int] type from [Map].
  ///
  /// If value is NULL or not [int] type return default value [defaultInt]
  ///
  int getInt(String key, {int defaultValue = defaultInt}) {
    if (containsKey(key)) return toInt(this[key] ?? defaultValue);
    errorLogsNS("Map.getInt[$key] has incorrect data : ${this[key]}");
    return defaultValue;
  }

  /// Reads a [key] value of [double] type from [Map].
  ///
  /// If value is NULL or not [double] type return default value [defaultDouble]
  ///
  double getDouble(String key, {double defaultValue = defaultDouble}) {
    if (containsKey(key)) return toDouble(this[key] ?? defaultValue);
    errorLogsNS("Map.getDouble[$key] has incorrect data : ${this[key]}");
    return defaultValue;
  }

  /// Reads a [key] value of [String] type from [Map].
  ///
  /// If value is NULL or not [String] type return default value [defaultString]
  ///.
  String getString(String key, {String defaultValue = defaultString}) {
    if (containsKey(key)) {
      return this[key]?.toString() ?? defaultValue;
    }
    errorLogsNS("Map.getString[$key] has incorrect data : ${this[key]}");
    return defaultValue;
  }

  /// Reads a [key] value of [List] type from [Map].
  ///
  /// If value is NULL or not [List] type return empty List[defaultList]
  ///
  // ignore: always_specify_types
  List getList(String key) {
    if (containsKey(key)) {
      if (this[key] is List) {
        return this[key] ?? defaultList;
      }
    }
    errorLogsNS("Map.getString[$key] has incorrect data :  ${this[key]}");
    return defaultList;
  }

  /// Reads a [key] value of [List] type from [Map].
  ///
  /// If value is NULL or not [List] type return default value [defaultString]
  ///
  // ignore: always_specify_types
  Map getMap(String key) {
    if (containsKey(key)) {
      if (this[key] is Map) {
        return this[key] ?? defaultMap;
      }
    }
    errorLogsNS("Map.getMap[$key] has incorrect data :  ${this[key]}");
    return defaultMap;
  }

  ///Add value to map if value is not null
  ///
  T add<T>({required String? key, required T? value}) =>
      putIfAbsent(key, () => value);

  ///Map to JSON using[json.encode]
  ///
  String toJson() {
    String data = "{}";
    try {
      data = json.encode(this);
    } on Exception catch (e, s) {
      errorLogsNS("Error in toJson\n\n *$this* ", e, s);
    }
    return data;
  }

  ///Convert map to a String withIndent
  ///
  String toPretty() {
    String data = defaultString;
    try {
      JsonEncoder encoder = JsonEncoder.withIndent('  ', toEncodable);
      data = encoder.convert(this);
    } on Exception catch (e, s) {
      errorLogsNS("Error in toPretty\n\n *$this*", e, s);
    }
    return data;
  }

  /// Returns a new map with null keys or values removed
  ///
  // ignore: always_specify_types
  Map<String, dynamic> get nullProtected => {...this}
    // ignore: always_specify_types
    ..removeWhere((String key, value) => value == null);
}

// ignore: always_specify_types, type_annotate_public_apis
dynamic toEncodable(object) {
  if (object is String ||
      object is num ||
      object is Map ||
      object is List ||
      object is bool) return object;
  return '$object';
}
