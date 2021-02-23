import 'package:flutter_test/flutter_test.dart';
import 'package:ns_utils/methods/conversion.dart';

main() {
  group('Conversions', () {
    test('toInt', () {
      expect(toInt(1), 1);
      expect(toInt(1.1), 1);
      expect(toInt(null), 0);
      expect(toInt('1'), 1);
      expect(toInt('12121'), 12121);
      expect(toInt('12.121'), 12);
      expect(toInt('12.1.21'), 0);
    });
    test('toDouble', () {
      expect(toInt(1.0), 1);
      expect(toInt(1.1), 1.1);
      expect(toInt(null), 0);
      expect(toInt('1'), 1);
      expect(toInt('12121'), 12121);
      expect(toInt('12.121'), 12.121);
      expect(toInt('12.1.21'), 0);
    });
  });
}
