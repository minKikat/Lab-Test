import 'package:flutter/material.dart';
import 'package:lab_test/Welcome.dart'; // 导入 WelcomePage

class Login extends StatefulWidget {
  const Login({Key? key, required String title}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Text(
              'Login',
              style: TextStyle(
                  color: Colors.white), // Change the text color to white
            ),
            SizedBox(width: 10), // Add some space between the text and the icon
            Icon(Icons.login,
                color: Colors.white), // Change the icon color to white
          ],
        ),
        backgroundColor: const Color(0xFF00704A), // Starbucks green
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          // Center widget to horizontally and vertically center its child
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.person,
                size: 100,
                color: Color(0xFF00704A), // Starbucks green
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person,
                      color: Color(0xFF00704A)), // Starbucks green
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF00704A)), // Starbucks green
                  ),
                  labelStyle: const TextStyle(
                      color: Colors.black), // Change the label color to black
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock,
                      color: Color(0xFF00704A)), // Starbucks green
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF00704A)), // Starbucks green
                  ),
                  labelStyle: const TextStyle(
                      color: Colors.black), // Change the label color to black
                  suffixIcon: IconButton(
                    // Add eye icon button to toggle password visibility
                    onPressed: () {
                      // Add logic to toggle password visibility
                    },
                    icon: const Icon(Icons.visibility), // Eye icon
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(
                  height:
                      5), // Adjust the space between the password field and the text
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Add your forget password logic here
                  },
                  child: const Text(
                    'Forget Password?',
                    style:
                        TextStyle(color: Color(0xFF00704A)), // Starbucks green
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          WelcomePage(username: _usernameController.text)));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF00704A), // Starbucks green
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.login, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                  height: 20), // Add some space after the login button
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        // Set Container to customize the background color
        color: const Color(0xFF00704A), // Starbucks green
        padding: const EdgeInsets.all(8.0),
        child: const Text(
          'COPYRIGHT © 2024 KAT MIN YUE',
          style:
              TextStyle(color: Colors.white), // Change the text color to white
          textAlign: TextAlign.center, // Center align the text
        ),
      ),
    );
  }
}
