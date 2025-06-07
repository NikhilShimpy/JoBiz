import 'package:flutter/material.dart';
import 'package:find_your_job/OnboardingScreens/edit_profile_screen.dart';

class MyProfileScreen extends StatefulWidget {
  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  String username = 'Username';
  String bio = 'Bio or Description';
  String email = 'example@example.com';
  String phoneNumber = '+1234567890';

  void _updateProfile(String newUsername, String newBio, String newEmail, String newPhoneNumber) {
    setState(() {
      username = newUsername;
      bio = newBio;
      email = newEmail;
      phoneNumber = newPhoneNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text(
          'My Profile',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 28),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => EditProfileScreen(
                    username: username,
                    bio: bio,
                    email: email,
                    phoneNumber: phoneNumber,
                    onSave: _updateProfile,
                  ),
                ),
              );
            },
          ),
        ],
      ),
      backgroundColor: const Color.fromRGBO(25, 43, 51, 0.5),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 50,
              child: Icon(Icons.person, size: 60),
            ),
            const SizedBox(height: 10),
            Text(
              username,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
              bio,
              style: const TextStyle(fontSize: 16, color: Colors.white70),
            ),
            const SizedBox(height: 30),
            ListTile(
              leading: const Icon(Icons.email, size: 35),
              title: Text(
                email,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.phone, size: 35),
              title: Text(
                phoneNumber,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            // Add more ListTile widgets for other profile details
          ],
        ),
      ),
    );
  }
}
