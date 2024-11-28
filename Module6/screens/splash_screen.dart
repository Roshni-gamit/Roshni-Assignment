import 'package:flutter/material.dart';
import 'package:practical/Module6/service/authservice.dart';
import 'login_screen.dart';
import 'dashboard_screen.dart';

class SplashScreen extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _auth.user,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.hasData) {
            return DashboardScreen();
          } else {
            return LoginScreen();
          }
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}