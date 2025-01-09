import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                child: Icon(Icons.person, size: 50),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Video Preferences',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: () {
                // Implement navigation or actions for Video Preferences
              },
              child: ListTile(
                title: Text('Download Option'),
                trailing: Icon(Icons.arrow_forward_ios, size: 16), // Panah kecil
              ),
            ),
            GestureDetector(
              onTap: () {
                // Implement navigation or actions for Video Playback Option
              },
              child: ListTile(
                title: Text('Video Playback Option'),
                trailing: Icon(Icons.arrow_forward_ios, size: 16), // Panah kecil
              ),
            ),
            SizedBox(height: 20),

            // Account Settings Section
            Text(
              'Account Settings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: () {
                // Implement navigation or actions for Account Security
              },
              child: ListTile(
                title: Text('Account Security'),
                trailing: Icon(Icons.arrow_forward_ios, size: 16), // Panah kecil
              ),
            ),
            GestureDetector(
              onTap: () {
                // Implement navigation or actions for Email Notification Preferences
              },
              child: ListTile(
                title: Text('Email Notification Preferences'),
                trailing: Icon(Icons.arrow_forward_ios, size: 16), // Panah kecil
              ),
            ),
            GestureDetector(
              onTap: () {
                // Implement navigation or actions for Learning Reminder
              },
              child: ListTile(
                title: Text('Learning Reminder'),
                trailing: Icon(Icons.arrow_forward_ios, size: 16), // Panah kecil
              ),
            ),
            SizedBox(height: 20),

            // App Settings Section
            Text(
              'App Settings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: () {
                // Implement navigation or actions for About LearnOut
              },
              child: ListTile(
                title: Text('About LearnOut'),
                trailing: Icon(Icons.arrow_forward_ios, size: 16), // Panah kecil
              ),
            ),
            GestureDetector(
              onTap: () {
                // Implement navigation or actions for Frequently Asked Questions
              },
              child: ListTile(
                title: Text('Frequently Asked Questions'),
                trailing: Icon(Icons.arrow_forward_ios, size: 16), // Panah kecil
              ),
            ),
            GestureDetector(
              onTap: () {
                // Implement navigation or actions for Store the LearnOut App
              },
              child: ListTile(
                title: Text('Store the LearnOut App'),
                trailing: Icon(Icons.arrow_forward_ios, size: 16), // Panah kecil
              ),
            ),
            SizedBox(height: 20),

            // Menempatkan tombol Logout di tengah
            Expanded(
              child: Align(
                alignment: Alignment.center,  // Menempatkan tombol di tengah
                child: ElevatedButton(
                  onPressed: () {
                    // Menampilkan popup konfirmasi logout
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Logout'),
                          content: const Text('Are you sure you want to log out?'),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('Cancel'),
                              onPressed: () {
                                Navigator.of(context).pop(); // Menutup dialog
                              },
                            ),
                            TextButton(
                              child: const Text('Logout'),
                              onPressed: () {
                                Navigator.of(context).pop(); // Menutup dialog
                                // Tambahkan logika logout di sini jika perlu
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: Text('Log Out'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
