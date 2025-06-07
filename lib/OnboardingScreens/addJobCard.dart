import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddJobPage extends StatefulWidget {
  const AddJobPage({Key? key}) : super(key: key);

  @override
  _AddJobPageState createState() => _AddJobPageState();
}

class _AddJobPageState extends State<AddJobPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _jobTitleController = TextEditingController();
  final TextEditingController _companyNameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _salaryRangeController = TextEditingController();
  final TextEditingController _employmentTypeController = TextEditingController();
  final TextEditingController _shiftController = TextEditingController();

  String _selectedCollection = 'jobCard'; // Default collection name

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      FirebaseFirestore.instance.collection(_selectedCollection).add({
        'jobTitle': _jobTitleController.text,
        'companyName': _companyNameController.text,
        'address': _addressController.text,
        'salaryRange': _salaryRangeController.text,
        'employmentType': _employmentTypeController.text,
        'shift': _shiftController.text,
      }).then((_) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Job added successfully')),
        );
        Navigator.pop(context);
      }).catchError((error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to add job: $error')),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Job'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                DropdownButtonFormField<String>(
                  value: _selectedCollection,
                  onChanged: (value) {
                    setState(() {
                      _selectedCollection = value!;
                    });
                  },
                  items: const [
                    DropdownMenuItem(
                      value: 'jobCard',
                      child: Text('Indore'),
                    ),
                    DropdownMenuItem(
                      value: 'RjobCard',
                      child: Text('Ranjeet Hanuman'),
                    ),
                    DropdownMenuItem(
                      value: 'GumastaNagarjobCard',
                      child: Text('Gumasta Nagar'),
                    ),
                  ],
                  decoration: const InputDecoration(labelText: 'Select Location'),
                ),
                TextFormField(
                  controller: _jobTitleController,
                  decoration: const InputDecoration(labelText: 'Job Title'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a job title';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _companyNameController,
                  decoration: const InputDecoration(labelText: 'Company Name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a company name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _addressController,
                  decoration: const InputDecoration(labelText: 'Address'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an address';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _salaryRangeController,
                  decoration: const InputDecoration(labelText: 'Salary Range'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a salary range';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _employmentTypeController,
                  decoration: const InputDecoration(labelText: 'Employment Type'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an employment type';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _shiftController,
                  decoration: const InputDecoration(labelText: 'Shift'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a shift';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _submitForm,
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
