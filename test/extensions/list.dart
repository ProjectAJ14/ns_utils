import 'package:flutter_test/flutter_test.dart';
import 'package:ns_utils/src.dart';

main() {
  group('ListExtensions', () {
    test('toJson', () {
      expect([12, 12].toJson(), '[12,12]');
      expect([].toJson(), '[]');
      expect(['123', '1234'].toJson(), '["123","1234"]');
      List list;
      expect(list.toJson(), '[]');
    });
  });
}
