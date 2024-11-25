import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_15_laba/main.dart';

void main() {
  group('Calculator Tests', () {
    test('Function y = (x + 3) * (4 - x) calculates correctly', () {
      final calculator = Calculator();
      expect(calculator.calculate(0), 12);
      expect(calculator.calculate(1), 10);
      expect(calculator.calculate(4), 0);
    });
  });

  group('Widget Tests', () {
    testWidgets('App contains title with required format', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());
      expect(find.text('IPZ-33: Andrii\'s last Flutter App'), findsOneWidget);
    });

    testWidgets('FloatingActionButton has correct icon', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());
      expect(find.byIcon(Icons.mouse), findsOneWidget);
    });

    testWidgets('Counter increments by 2', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());
      expect(find.text('Counter: 0'), findsOneWidget);

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pump();

      expect(find.text('Counter: 2'), findsOneWidget);
    });
  });
}
