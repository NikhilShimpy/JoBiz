import 'package:find_your_job/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final emailController = TextEditingController();
  final auth = FirebaseAuth.instance ;

  /*
  void _resetPassword(BuildContext context) {
    // Add logic to send password reset link to the provided email address
    String email = emailController.text;
    // Placeholder logic for demonstration
    print('Reset password link sent to $email');
    // Show confirmation dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Password Reset'),
          content: Text('Password reset link has been sent to $email'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
   */


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(height: 16.0),
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 16.0),

        ElevatedButton(
          onPressed: () {
            auth.sendPasswordResetEmail(email: emailController.text.toString()).then((value) {
              Utils().toastMessage("We have send you email to recover your password, please check email");
            }).onError((error, stackTrace) {
              Utils().toastMessage(error.toString());
            });
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20), // Adjust the value as needed
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(10.0), // Adjust the padding as needed
            child: Text(
              'Reset Password',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),


          ],
        ),
      ),
    );
  }
}
