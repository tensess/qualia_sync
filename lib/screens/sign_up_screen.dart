import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  SignUpScreenState createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nicknameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _register() {
    if (_formKey.currentState!.validate()) {
      debugPrint("Nickname: \${_nicknameController.text}");
      debugPrint("Email: \${_emailController.text}");
      debugPrint("Password: \${_passwordController.text}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registration")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nicknameController,
                decoration: InputDecoration(labelText: "Nickname"),
                validator: (value) =>
                    value!.isEmpty ? "Enter your nickname" : null,
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: "Email"),
                keyboardType: TextInputType.emailAddress,
                validator: (value) =>
                    value!.contains("@") ? null : "Enter a valid email",
              ),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: "Password"),
                obscureText: true,
                validator: (value) =>
                    value!.length >= 6 ? null : "Minimum 6 characters",
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _register,
                child: Text("Sign Up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
