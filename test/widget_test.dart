import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pam_w5s2_42325024/main.dart';

void main() {
  testWidgets('Menu page tampil', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('PAM W5S2 - Form & Navigation'), findsOneWidget);
    expect(find.text('TextField'), findsOneWidget);
  });
}