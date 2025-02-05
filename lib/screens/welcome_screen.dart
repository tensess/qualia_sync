import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SocialButtons> buttons = [
      SocialButtons('Sign in', () {}),
      SocialButtons('Sign up', () {}),
    ];

    return MaterialApp(
      home: Scaffold(
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
                  ...buttons.map((element) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ElevatedButton(
                        onPressed: element.onPressed,
                        child: Text(element.text),
                      )))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SocialButtons {
  final String text;
  final VoidCallback onPressed;

  SocialButtons(this.text, this.onPressed);
}
