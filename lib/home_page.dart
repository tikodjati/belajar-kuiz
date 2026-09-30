import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Screen'), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              // Logo / Icon Flutter
              const Icon(Icons.flutter_dash, size: 60, color: Colors.lightBlue),

              const SizedBox(height: 40),

              // Email
              TextField(
                keyboardType:
                    TextInputType.emailAddress, //biar tipe inputnya email
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // Password
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Login Button
              SizedBox(
                width: 110,
                child: ElevatedButton(
                  onPressed: () {
                    print('Login button pressed');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(0, 45),
                    padding: const EdgeInsets.symmetric(horizontal: 32),
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
            ],
          ),
        ),
      ),
    );
  }
}
