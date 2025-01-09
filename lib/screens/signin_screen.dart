import 'package:flutter/material.dart';
import 'home_screen.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
        backgroundColor: Colors.purple.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Enter Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.visibility_off),
              ),
              obscureText: true,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.purple),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple.shade200,
              ),
              child: const Text('Sign In'),
            ),
            const SizedBox(height: 20),
            const Center(child: Text('or sign in with')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.g_mobiledata, size: 40),
                  onPressed: () {
                  },
                  color: Colors.purple,
                ),
                const SizedBox(width: 20),
                IconButton(
                  icon: const Icon(Icons.facebook, size: 40),
                  onPressed: () {
                  },
                  color: Colors.purple,
                ),
              ],
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
              },
              child: const Text(
                "Don't have an account? Sign Up Now",
                style: TextStyle(
                  color: Colors.purple,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
