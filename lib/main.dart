import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'splash_screen.dart';
import 'dashboard_screen.dart';
import 'forgot_password_screen.dart';
import 'profile_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/dashboard': (context) => DashboardScreen(
              userEmail: '',
            ),
        '/forgot-password': (context) => ForgotPasswordScreen(),
        '/profile': (context) => ProfileScreen(
              userEmail: '',
            ),
      },
    );
  }
}
