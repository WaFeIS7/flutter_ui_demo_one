import 'package:flutter/material.dart';
import 'package:flutter_demo_1/screens/login_register/reset_passord_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Reset Password Screen Test', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(
          home: ResetPasswordScreen(),
        ),
      ),
    );

    expect(find.byType(Image), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.byType(ElevatedButton), findsNWidgets(1));
  });
}
