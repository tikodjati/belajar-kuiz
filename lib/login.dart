import 'package:belajar_kuis/models/user.dart';
import 'package:belajar_kuis/root.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLogged = false;
  bool isLoginFailed = false;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    String _username = _usernameController.text;
    String _password = _passwordController.text;

    if (_username == user1.username && _password == user1.password) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Root(nama: user1.name)),
      );
    } else {
      setState(() {
        isLoginFailed = true;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Login gagal: Username atau Password salah.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login Page',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              if (isLogged == false) ...[
                // Logo / Icon Flutter
                const Text(
                  'This is Login Page',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 20),

                const Icon(
                  Icons.flutter_dash,
                  size: 60,
                  color: Colors.lightBlue,
                ),

                const SizedBox(height: 30),

                // Username
                // _usernameField(_usernameController),
                // _inputField(
                //   controller: _usernameController,
                //   hint: 'Username',
                //   isLoginFailed: isLoginFailed,
                //   obscure: true,
                // ),
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                    errorText: isLoginFailed ? 'Username Salah Gok!' : null,
                  ),
                ),

                const SizedBox(height: 15),

                // Password
                // _inputField(
                //   controller: _passwordController,
                //   hint: 'Password',
                //   isLoginFailed: isLoginFailed,
                // ),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    errorText: isLoginFailed ? 'Password Salah Gok!' : null,
                  ),
                ),

                const SizedBox(height: 20),

                // Login Button
                SizedBox(
                  // width: 110,
                  child: ElevatedButton(
                    onPressed: _login,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(100, 45),
                    ),
                    child: const Text('Log In'),
                  ),
                ),

                // Forgot Password
                TextButton(
                  onPressed: () {
                    print('Forgot password pressed');
                  },
                  child: const Text('Forgot password?'),
                ),
              ] else ...[
                const Text(
                  'Halo, User!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 20),

                Text('Username kamu adalah ${user1.username}'),
              ],
            ],
          ),
        ),
      ),
    );
  }

  // Widget _usernameField(TextEditingController usnController) {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
  //     child: TextField(
  //       controller: usnController,
  //       decoration: InputDecoration(
  //         labelText: 'Username',
  //         contentPadding: EdgeInsets.all(8.0),
  //         border: OutlineInputBorder(
  //           borderRadius: BorderRadius.all(Radius.circular(8.0)),
  //           borderSide: BorderSide(color: Colors.blue),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // Widget _passwordField(TextEditingController pswController) {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
  //     child: TextField(
  //       controller: pswController,
  //       decoration: InputDecoration(
  //         labelText: 'Username',
  //         contentPadding: EdgeInsets.all(8.0),
  //         border: OutlineInputBorder(
  //           borderRadius: BorderRadius.all(Radius.circular(8.0)),
  //           borderSide: BorderSide(color: Colors.blue),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // Widget _inputField({
  //   required TextEditingController controller,
  //   required String hint,
  //   required bool isLoginFailed,
  //   bool obscure = false,
  // }) {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),

  //     child: TextField(
  //       controller: controller,
  //       obscureText: obscure,
  //       enabled: true,

  //       decoration: InputDecoration(
  //         hintText: hint,

  //         contentPadding: const EdgeInsets.all(8.0),

  //         border: const OutlineInputBorder(
  //           borderRadius: BorderRadius.all(Radius.circular(8.0)),
  //         ),

  //         enabledBorder: OutlineInputBorder(
  //           borderRadius: const BorderRadius.all(Radius.circular(8.0)),

  //           borderSide: BorderSide(
  //             color: isLoginFailed ? Colors.red : Colors.blue,

  //             width: 2.0,
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
