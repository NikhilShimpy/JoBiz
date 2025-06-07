


import 'package:find_your_job/OnboardingScreens/Home.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ThankYouPage extends StatefulWidget {
  const ThankYouPage({super.key});

  @override
  State<ThankYouPage> createState() => _ThankYouPageState();
}

class _ThankYouPageState extends State<ThankYouPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text(
          'Submitted',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
        ],
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.check_circle_outline,
                size: 100,
                color: Colors.green,
              ),
              const SizedBox(height: 20),
              const Text(
                'Thank you for your submission!',
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Text(
                    "JoBiz professional will be in touch shortly. You can consult our experts during 10:00AM - 6:00AM",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                    softWrap: true,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        _makePhoneCall('tel:+919993787492');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.black54),
                          borderRadius: BorderRadius.circular(26),
                        ),
                      ),
                      child: const Row(
                        children: [
                          Text(
                            'Call us +91 9993787492',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                              size: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

    );
  }

  void _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
