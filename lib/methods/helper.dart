import 'package:crossplat_objectid/crossplat_objectid.dart'
    as crossplatObjectid;

String generateDbId() {
  return crossplatObjectid.ObjectId().toHexString();
}
