import 'package:flutter/material.dart';
import 'package:flutty/authentication.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Home"),
            RaisedButton(
              onPressed: () {
                context.read<Authentication>().signOut();
              },
              child: Text("Sign out"),
            ),
          ],
        ),
      ),
    );
  }
}
