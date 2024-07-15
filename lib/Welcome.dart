import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  final String username;

  const WelcomePage({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        backgroundColor: const Color(0xFF00704A), // Starbucks green
      ),
      body: Center(
        child: Text(
          'Welcome $username',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
