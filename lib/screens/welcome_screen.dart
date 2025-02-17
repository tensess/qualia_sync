import 'package:flutter/material.dart';
import 'package:qualia_sync/themes/my_button_theme.dart';
import '../widgets/custom_button.dart';
import 'sign_up_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CustomButton> socialButtons = [
      CustomButton(
        text: 'Sign in',
        onPressed: () {
          debugPrint('Sign in clicked');
        },
      ),
      CustomButton(
        text: 'Sign up',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SignUpScreen(),
            ),
          );
        },
      ),
    ];

    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Qualia Sync',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                ...socialButtons.map((element) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ElevatedButton(
                      onPressed: element.onPressed,
                      style: MyButtonTheme.buttonStyle,
                      child: Text(element.text),
                    )))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
