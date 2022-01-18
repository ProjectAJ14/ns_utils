import '../utils/crossplat_object_id/src/objectid.dart';

String generateDbId() {
  return ObjectId().toHexString();
}

String get uniqueId => ObjectId().toHexString();
