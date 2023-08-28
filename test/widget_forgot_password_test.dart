import 'package:flutter/material.dart';
import 'package:flutter_demo_1/screens/key_contants.dart';
import 'package:flutter_demo_1/screens/login_register/forgot_password_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Forgot Password Screen Test', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(
          home: ForgotPasswordScreen(),
        ),
      ),
    );
    expect(find.byType(Image), findsOneWidget, reason: 'Image');
    expect(find.text('Forgot'), findsOneWidget);
    expect(find.text('Password?'), findsOneWidget);
    expect(find.text('Password?'), findsOneWidget);
    expect(find.byKey(buttonSubmit), findsOneWidget, reason: 'Button Submit');
  });
}
