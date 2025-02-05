import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';

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
          debugPrint('Sign up clicked');
        },
      ),
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
                  ...socialButtons.map((element) => Padding(
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
