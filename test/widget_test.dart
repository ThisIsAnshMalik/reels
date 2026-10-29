import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:reels_app/main.dart';

void main() {
  testWidgets('shows hello world', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Hello World'), findsOneWidget);
  });
}
