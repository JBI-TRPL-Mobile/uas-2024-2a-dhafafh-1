import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        backgroundColor: Colors.purple.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Full Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
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
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.visibility_off),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple.shade200,
              ),
              child: const Text('Sign Up'),
            ),
            const SizedBox(height: 20),
            const Center(child: Text('or sign up with')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                  },
                  icon: const Icon(Icons.facebook),
                  color: Colors.purple,
                ),
                const SizedBox(width: 20),
                IconButton(
                  onPressed: () {
                  },
                  icon: const Icon(Icons.g_mobiledata),
                  color: Colors.purple,
                ),
              ],
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
              },
              child: const Text(
                "Already have an account? Sign In Now",
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
