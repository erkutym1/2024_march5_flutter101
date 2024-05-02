import 'package:flutter/material.dart';
import 'package:flutter1/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextFormField(decoration: _buildDecoration('Kullanıcı Adı')),
              TextFormField(
                  obscureText: true, decoration: _buildDecoration('Parola')),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ));
                },
                child: const Text('LOGIN'),
              ),
            ],
          ),
        ));
  }

  InputDecoration _buildDecoration(String hintText) {
    return InputDecoration(
      hintText: hintText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
    );
  }
}
