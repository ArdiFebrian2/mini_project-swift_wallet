import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:tunai_mudah/app/modules/signin/views/signin_view.dart';

void main() {
  testWidgets('Testing 1 text, 2 field dan 1 button',
      (WidgetTester widgetTester) async {
    // Build our app and trigger a frame.
    await widgetTester.pumpWidget(MaterialApp(home: const SigninView()));

    expect(find.byKey(const Key("Welcome Back")), findsOneWidget);
    expect(find.byKey(const Key("Email")), findsOneWidget);
    expect(find.byKey(const Key("Password")), findsOneWidget);
    expect(find.byKey(const Key("login_button")), findsOneWidget);
  });
}
