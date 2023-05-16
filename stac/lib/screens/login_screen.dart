import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _authentication = FirebaseAuth.instance;
  String? id;
  String? pw;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  id = value;
                });
              },
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  pw = value;
                });
              },
              obscureText: true,
            ),
            TextButton(
              onPressed: () {
                print([id, pw]);
              },
              child: const Text("login"),
            ),
          ],
        ),
      ),
    );
  }
}
