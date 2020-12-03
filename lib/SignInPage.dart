import 'package:flutter/material.dart';
import 'package:flutty/authentication.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              labelText: "Email",
            ),
          ),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(
              labelText: "Password",
            ),
          ),
          RaisedButton(
            onPressed: () {
              //sign In
              context.read<Authentication>().signIn(
                  email: emailController.text.trim(),
                  password: passwordController.text.trim());
            },
            child: Text("Sign In"),
          )
        ],
      ),
    );
  }
}
