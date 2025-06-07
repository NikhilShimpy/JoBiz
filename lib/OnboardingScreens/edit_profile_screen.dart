import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  static const routeName = '/edit-profile';

  final String username;
  final String bio;
  final String email;
  final String phoneNumber;
  final Function(String, String, String, String) onSave;

  EditProfileScreen({
    required this.username,
    required this.bio,
    required this.email,
    required this.phoneNumber,
    required this.onSave,
  });

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  late String _username;
  late String _bio;
  late String _email;
  late String _phoneNumber;

  @override
  void initState() {
    super.initState();
    _username = widget.username;
    _bio = widget.bio;
    _email = widget.email;
    _phoneNumber = widget.phoneNumber;
  }

  void _saveForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      widget.onSave(_username, _bio, _email, _phoneNumber);
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: _saveForm,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                initialValue: _username,
                decoration: const InputDecoration(labelText: 'Username'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a username.';
                  }
                  return null;
                },
                onSaved: (value) {
                  _username = value!;
                },
              ),
              TextFormField(
                initialValue: _bio,
                decoration: const InputDecoration(labelText: 'Bio or Description'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a bio or description.';
                  }
                  return null;
                },
                onSaved: (value) {
                  _bio = value!;
                },
              ),
              TextFormField(
                initialValue: _email,
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value!.isEmpty || !value.contains('@')) {
                    return 'Please enter a valid email address.';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),
              TextFormField(
                initialValue: _phoneNumber,
                decoration: const InputDecoration(labelText: 'Phone Number'),
                validator: (value) {
                  if (value!.isEmpty || value.length < 10) {
                    return 'Please enter a valid phone number.';
                  }
                  return null;
                },
                onSaved: (value) {
                  _phoneNumber = value!;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
