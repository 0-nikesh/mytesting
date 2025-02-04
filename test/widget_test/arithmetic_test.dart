import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mytesting/screen/arithmetic.dart';

void main() {
  testWidgets("should have a title", (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ArithemticScreen(),
      ),
    );

    Finder title = find.text('Arithmetic Operations');
    expect(title, findsOneWidget);
  });

  testWidgets("add two numbers", (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ArithemticScreen(),
      ),
    );

    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextField).at(0), "1");
    await tester.enterText(find.byType(TextField).at(1), "2");

    await tester.tap(find.widgetWithText(ElevatedButton, 'Add'));
    await tester.pumpAndSettle();

    expect(find.text("Result : 3"), findsOneWidget);
  });

  testWidgets("subtract two numbers", (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ArithemticScreen(),
      ),
    );

    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextField).at(0), "4");
    await tester.enterText(find.byType(TextField).at(1), "2");

    await tester.tap(find.widgetWithText(ElevatedButton, 'Subtract'));
    await tester.pumpAndSettle();

    expect(find.text("Result : 2"), findsOneWidget);
  });
}
