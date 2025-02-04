import 'package:flutter_test/flutter_test.dart';
import 'package:mytesting/model/arithmetic.dart';

void main() {
  test('add two numbers', () {
    final arithemetic = Arithmetic();
    int expectedValue = 7;
    arithemetic.first = 3;
    arithemetic.second = 4;
    // int actualValue = arithemetic.add()!;

    int actualValue = arithemetic.multiply()!;

    expect(expectedValue, actualValue);
  });
}
