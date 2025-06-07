import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NcatPage extends StatelessWidget {

  void _launchURLforSkill() async {
    const url = 'https://docs.google.com/forms/d/e/1FAIpQLSey9lAHeSnllrSS1xDfGWLu5Vz1f2sCSpP7hV_h_zL8e1UUDA/viewform?usp=sf_link';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NCAT Aptitude Test'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.0),
              Text(
                'NCAT Aptitude Test',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Details about the test...',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Benefits of taking the test...',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Eligibility criteria...',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _launchURLforSkill,
                  // Add navigation to registration page or functionality her
                child: Text('Register Now'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
