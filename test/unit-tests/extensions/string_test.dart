import 'package:flutter_test/flutter_test.dart';

import 'package:ns_utils/src.dart';

void main() {
  group('StringExtensions', () {
    test('toMap', () {
      expect(''.toMap(), {});

      expect('{"id":1}'.toMap(), {"id": 1});

      expect('{"id":"123"}'.toMap(), {"id": "123"});
    });
    test('toList', () {
      expect(''.toList(), []);

      expect('[1,2,3]'.toList(), [1, 2, 3]);

      expect('["1","2"]'.toList(), ["1", "2"]);
    });
    test('isNotBlank', () {
      expect(''.isNotBlank, false);
      expect('Ajay'.isNotBlank, true);
    });
    test('toINT', () {
      expect('12121'.toINT, 12121);
      expect('12.121'.toINT, 12);
      expect('12.1.21'.toINT, 0);
    });
    test('toDOUBLE', () {
      expect('12121'.toDOUBLE, 12121);
      expect('12.121'.toDOUBLE, 12.121);
      expect('12.1.21'.toDOUBLE, 0);
    });
    test('asBool', () {
      expect('true'.asBool, true);
      expect('True'.asBool, true);
      expect('false'.asBool, false);
      expect('False'.asBool, false);
      expect('yes'.asBool, true);
      expect('YES'.asBool, true);
      expect('no'.asBool, false);
      expect('NO'.asBool, false);
      // string numbers
      expect('232'.asBool, true);
      expect('1'.asBool, true);
      expect('0'.asBool, false);
      expect('-1'.asBool, false);
    });
    test('toDateTime', () {
      expect('2020-08-01'.toDateTime(), DateTime(2020, 08, 01));
      String value = DateTime(2020, 08, 01).toIso8601String();
      expect(value.toDateTime(), DateTime(2020, 08, 01));
    });
  });
}
