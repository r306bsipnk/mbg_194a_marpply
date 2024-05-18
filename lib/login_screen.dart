import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void handleLogin() {
    // Logika untuk login
    String email = emailController.text;
    String password = passwordController.text;

    if (email.isNotEmpty && password.isNotEmpty) {
      // Navigasi ke halaman dashboard
      Navigator.of(context).pushReplacementNamed('/dashboard');
    } else {
      // Menampilkan pesan error jika email atau password kosong
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Email dan Password harus diisi')),
      );
    }
  }

  void handleRegister() {
    // Navigasi ke halaman register
    print('Navigasi ke halaman register');
  }

  void handleForgotPassword() {
    // Navigasi ke halaman lupa password
    print('Navigasi ke halaman lupa password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Center(child: Text('Halaman Login')), // Memindahkan judul ke tengah
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Memusatkan isi kolom
          children: <Widget>[
            Image.asset('images/assets/logo.jpeg', height: 100, width: 100),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
              textInputAction: TextInputAction.done,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: handleForgotPassword,
                child: Text('Lupa Password?'),
              ),
            ),
            ElevatedButton(
              onPressed: handleLogin,
              child: Text('Login'),
            ),
            TextButton(
              onPressed: handleRegister,
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
