import 'package:test/test.dart';

num add<T extends num>({required T a, required T b}) {
  return a + b;
}

num sub<T extends num>({required T a, required T b}) {
  return a - b;
}

void main() {
  group("Main group test for functions -", () {
    test("Add function test", () {
      var matcher = 30;
      var actual = add(a: 10, b: 20);
      expect(actual, matcher);
    });
    test("Sub function test", () {
      var matcher = 10;
      var actual = sub(a: 30, b: 10);
      expect(actual, matcher);
    });
  });
}
