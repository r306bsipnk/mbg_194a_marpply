import 'package:flutter/material.dart';

void main() {
  runApp(LupaPasswordPage());
}

class LupaPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ubah Password'),
        ),
        body: LupaPasswordForm(),
      ),
    );
  }
}

class LupaPasswordForm extends StatefulWidget {
  @override
  _LupaPasswordFormState createState() => _LupaPasswordFormState();
}

class _LupaPasswordFormState extends State<LupaPasswordForm> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _newPasswordController = TextEditingController();

  bool _passwordReset = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: _passwordReset
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Password telah direset!',
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Kembali'),
                ),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email Pengguna',
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password Lama',
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 20.0),
                TextField(
                  controller: _newPasswordController,
                  decoration: InputDecoration(
                    labelText: 'Password Baru',
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Tambahkan logika untuk mengirim perubahan password
                    String email = _emailController.text;
                    String oldPassword = _passwordController.text;
                    String newPassword = _newPasswordController.text;
                    print(
                        'Mengirim permintaan perubahan password untuk $email dari password lama: $oldPassword ke password baru: $newPassword');
                    // Setelah berhasil mengirim permintaan, set state _passwordReset ke true
                    setState(() {
                      _passwordReset = true;
                    });
                  },
                  child: Text('Ubah Password'),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Kembali'),
                ),
              ],
            ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _newPasswordController.dispose();
    super.dispose();
  }
}
