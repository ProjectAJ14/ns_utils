import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ns_utils/src.dart';

main() {
  group('MapExtensions', () {
    test('getBool', () {
      Map data;
      expect(data.getBool('key'), false);
      expect(data.getBool('key', defaultValue: true), true);
      data = {
        'key': true,
      };
      expect(data.getBool('key'), true);
      data = {
        'key1': true,
      };
      expect(data.getBool('key'), false);
    });
    test('getInt', () {
      Map data;
      expect(data.getInt('key'), 0);
      expect(data.getInt('key', defaultValue: 1), 1);
      data = {
        'key': 1,
      };
      expect(data.getInt('key'), 1);
      data = {
        'key1': 1,
      };
      expect(data.getInt('key'), 0);
    });
    test('getDouble', () {
      Map data;
      expect(data.getDouble('key'), 0);
      expect(data.getDouble('key', defaultValue: 1.5), 1.5);
      data = {
        'key': 1.1,
      };
      expect(data.getDouble('key'), 1.1);
      data = {
        'key1': 1,
      };
      expect(data.getDouble('key'), 0);
    });
    test('getString', () {
      Map data;
      expect(data.getString('key'), '');
      expect(data.getString('key', defaultValue: 'NA'), 'NA');
      data = {
        'key': 'Ajay',
      };
      expect(data.getString('key'), 'Ajay');
      data = {
        'key1': 'Kumar',
      };
      expect(data.getString('key'), '');
    });
    test('getList', () {
      Map data;
      expect(data.getList('key'), []);
      data = {
        'key': [1, 2, 3],
      };
      expect(data.getList('key'), [1, 2, 3]);
      data = {
        'key1': [1, 2, 3],
      };
      expect(data.getList('key'), []);
    });
    test('getMap', () {
      Map data;
      expect(data.getMap('key'), {});
      data = {
        'key': {"id": 1},
      };
      expect(data.getMap('key'), {"id": 1});
      data = {
        'key1': {"id": 1},
      };
      expect(data.getMap('key'), {});
    });
    test('toJson', () {
      Map data;
      expect(data.toJson(), "{}");
      data = {
        'key': {"id": 1},
      };
      expect(data.toJson(), '{"key":{"id":1}}');
    });

    test('toPretty', () {
      Map data = {
        "_id": "5f294631410e4b3d1ae472c8",
        "index": 0,
        "guid": "e79b7dc5-9db2-40fb-acc4-2063aaf4fdcf",
        "isActive": false,
        "balance": "3,017.80",
        "picture": "http://placehold.it/32x32",
        "age": 32,
        "eyeColor": "brown",
        "name": {"first": "Richmond", "last": "Griffith"},
        "company": "ACCUFARM",
        "email": "richmond.griffith@accufarm.com",
        "phone": "+1 (985) 469-2418",
        "address": "181 Tilden Avenue, Hamilton, Idaho, 2062",
        "about":
            "Fugiat consectetur exercitation ex eiusmod officia ex exercitation et est enim cillum consectetur deserunt fugiat. Ex aliqua cupidatat consectetur reprehenderit. Voluptate nisi ipsum magna aliqua deserunt consectetur dolor occaecat fugiat labore. Sit Lorem elit duis deserunt ipsum adipisicing amet. Ullamco esse commodo et laborum minim. Sunt et exercitation veniam magna aute.",
        "registered": "Thursday, November 2, 2017 10:07 PM",
        "latitude": "-36.620306",
        "longitude": "128.527698",
        "tags": ["do", "dolore", "sint", "anim", "reprehenderit"],
        "range": [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
        "friends": [
          {"id": 0, "name": "Goodman Bennett"},
          {"id": 1, "name": "Justice Hunter"},
          {"id": 2, "name": "Webb Blevins"}
        ],
        "greeting": "Hello, Richmond! You have 9 unread messages.",
        "favoriteFruit": "banana"
      };

      debugPrint('Not Pretty\n');
      debugPrint('$data');
      debugPrint('\n\nPretty🌼');
      debugPrint(data.toPretty());
    });
  });
}
