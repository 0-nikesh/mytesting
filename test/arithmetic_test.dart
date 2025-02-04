import 'package:flutter_test/flutter_test.dart';
import 'package:mytesting/model/arithmetic.dart';

void main() {
  group("Arithmetic test", () {
    test('subtract two numbers', () {
    final arithemetic = Arithmetic();
    int expectedValue = -1;
    arithemetic.first = 3;
    arithemetic.second = 4;
    int actualValue = arithemetic.subtract()!;
    expect(expectedValue, actualValue);
  });

    test('add two numbers', () {
    final arithemetic = Arithmetic();
    int expectedValue = 7;
    arithemetic.first = 3;
    arithemetic.second = 4;
    int actualValue = arithemetic.add()!;
    expect(expectedValue, actualValue);
  });
  });

  // test('multiply two numbers', () {
  //   final arithemetic = Arithmetic();
  //   int expectedValue = 12;
  //   arithemetic.first = 3;
  //   arithemetic.second = 4;
  //   int actualValue = arithemetic.multiply()!;
  //   expect(expectedValue, actualValue);
  // });

  //   test('division two numbers', () {
  //   final arithemetic = Arithmetic();
  //   int expectedValue = 1;
  //   arithemetic.first = 4;
  //   arithemetic.second = 4;
  //   int actualValue = arithemetic.divide()!;
  //   expect(expectedValue, actualValue);
  // });
}
