import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart'; // 2. Import testing package
import 'package:get/get.dart';
import 'package:tunai_mudah/app/routes/app_pages.dart';
import 'package:tunai_mudah/app/shared/theme.dart';
import 'package:tunai_mudah/app/widgets/ButtonWidgets.dart';

import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back',
                key: Key('welcome_back_text'), // 1. Add key to Text widget
                style: semibold.copyWith(
                  fontSize: 18,
                  color: darkBlack,
                ),
              ),
              Text(
                'Login to continue your journey',
                style: regular.copyWith(
                  fontSize: 12,
                  color: grey,
                ),
              )
            ],
          ),
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 221,
            width: 221,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/sign.png'),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  key: Key('email_text'), // 1. Add key to Text widget
                  style: semibold.copyWith(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(
                      color: lineStroke,
                    ),
                  ),
                  child: TextField(
                    autocorrect: false,
                    style: regular.copyWith(
                      fontSize: 12,
                      color: darkGrey,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.fromLTRB(16, 0, 16, 10),
                      hintText: 'Enter Your Email',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Password',
                  key: Key('password_text'), // 1. Add key to Text widget
                  style: semibold.copyWith(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: lineStroke,
                    ),
                  ),
                  child: TextField(
                    autocorrect: false,
                    obscureText: true,
                    style: regular.copyWith(
                      fontSize: 12,
                      color: darkGrey,
                    ),
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.fromLTRB(16, 0, 16, 10),
                        hintText: 'Enter Your Password'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('forget tapped');
                      },
                      child: Text(
                        'Forget Password ?',
                        style: regular.copyWith(
                          fontSize: 10,
                          color: orange,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    print('Login Tapped');
                    Get.toNamed(Routes.PHONENUMBER);
                  },
                  child: const ButtonWidgets(
                    // 1. Add key to ButtonWidgets widget
                    label: 'Login',
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have a account? ',
                      style: regular.copyWith(
                        fontSize: 10,
                        color: grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offAllNamed(Routes.SIGNUP);
                      },
                      child: Text(
                        'Sign Up',
                        style: regular.copyWith(
                          fontSize: 10,
                          color: orange,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  testWidgets('UI Test for SigninView', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: SigninView()));

    // Verify that the welcome back text is displayed.
    expect(find.text('Welcome Back'), findsOneWidget);

    // Verify that the email text field is displayed.
    expect(find.byKey(Key('email_text')), findsOneWidget);

    // Verify that the password text field is displayed.
    expect(find.byKey(Key('password_text')), findsOneWidget);

    // Verify that the login button is displayed.
    expect(find.byKey(Key('login_button')), findsOneWidget);
  });
}
