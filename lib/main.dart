import 'package:flutter/material.dart';
import 'login_screen.dart'; // Import view controller
import 'splash_screen.dart'; // Import splash screen
import 'dashboard_screen.dart'; // Import dashboard screen

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(), // Menampilkan splash screen terlebih dahulu
      routes: {
        '/login': (context) => LoginScreen(),
        '/dashboard': (context) => DashboardScreen(),
      },
    );
  }
}
