import 'package:crossplat_objectid/crossplat_objectid.dart'
    as cross_plat_object_id;

String generateDbId() {
  return cross_plat_object_id.ObjectId().toHexString();
}
