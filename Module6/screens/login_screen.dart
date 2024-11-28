import 'package:flutter/material.dart';
import 'package:practical/Module6/service/authservice.dart';


class LoginScreen extends StatelessWidget {
  final AuthService _auth = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _emailController, decoration: InputDecoration(labelText: 'Email')),
            TextField(controller: _passwordController, obscureText: true, decoration: InputDecoration(labelText: 'Password')),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                dynamic result = await _auth.signInWithEmailAndPassword(
                    _emailController.text, _passwordController.text);
                if (result == null) {
                  // Show error
                  print("Error logging in");
                } else {
                  Navigator.pushReplacementNamed(context, '/dashboard');
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}