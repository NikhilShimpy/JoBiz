import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsPage extends StatelessWidget {
  final List<Map<String, String>> teamMembers = [
    {
      'name': 'Nikhil Shimpy',
      'role': 'CEO & Founder',
      'description': 'Nikhil is the visionary behind JoBiz with over 10 years of experience in the tech industry.',
      'image': 'assets/image/nikhil.jpg',
      'facebook': 'https://www.facebook.com/yourusername',
      'twitter': 'https://twitter.com/yourusername',
      'instagram': 'https://www.instagram.com/nikhilshimpyy/',
      'linkedin': 'https://www.linkedin.com/in/nikhil-shimpy-a32a56231?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app',
    },
    {
      'name': 'Dhruv Joshi',
      'role': 'CTO',
      'description': 'Dhruv leads the technology team with a passion for innovative solutions.',
      'image': 'assets/image/dhruv.jpg',
      'facebook': 'https://www.facebook.com/yourusername',
      'twitter': 'https://twitter.com/yourusername',
      'instagram': 'https://www.instagram.com/dhruv.joshi.4',
      'linkedin': 'https://www.linkedin.com/in/yourusername',
    },
    {
      'name': 'Samarth Pandya',
      'role': 'COO',
      'description': 'Samarth ensures smooth operations and oversees the business strategy.',
      'image': 'assets/image/samarth.jpg',
      'facebook': 'https://www.facebook.com/yourusername',
      'twitter': 'https://twitter.com/yourusername',
      'instagram': 'https://www.instagram.com/_samarthpandya_',
      'linkedin': 'https://www.linkedin.com/in/yourusername',
    },
    {
      'name': 'Sarthak Pal',
      'role': 'CFO',
      'description': 'Sarthak manages the company’s finances with precision and expertise.',
      'image': 'assets/image/pal.jpg',
      'facebook': 'https://www.facebook.com/yourusername',
      'twitter': 'https://twitter.com/yourusername',
      'instagram': 'https://www.instagram.com/__sarthak_pal',
      'linkedin': 'https://www.linkedin.com/in/yourusername',
    },
    {
      'name': 'Karan Gupta',
      'role': 'CMO',
      'description': 'Karan drives the marketing efforts to expand JoBiz’s reach.',
      'image': 'assets/image/karan.jpg',
      'facebook': 'https://www.facebook.com/yourusername',
      'twitter': 'https://twitter.com/yourusername',
      'instagram': 'https://www.instagram.com/karan_gupta.25',
      'linkedin': 'https://www.linkedin.com/in/yourusername',
    },
  ];

  void _launchURL(String url) async {
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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black12,
        title: const Text(
          'About Us',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 28),
        ),
      ),
      body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'About JoBiz',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'JoBiz offers jobs and suggests the best businesses that can provide profits to people in their selected location who want to start a business.',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 32),
                    Text(
                      'Meet Our Team',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 1,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                        ),
                        itemCount: teamMembers.length,
                        itemBuilder: (context, index) {
                          final member = teamMembers[index];
                          return Card(
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 10),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.asset(
                                      member['image']!,
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  Text(
                                    member['name']!,
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    member['role']!,
                                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      member['description']!,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.facebook),
                                        onPressed: () => _launchURL(member['facebook']!),
                                      ),
                                      SizedBox(width: 8,),
                                      GestureDetector(
                                        onTap: () => _launchURL(member['instagram']!),
                                        child: Image.network(
                                          'https://cdn4.iconfinder.com/data/icons/picons-social/57/38-instagram-2-512.png',
                                          height: 22,
                                          width: 24,
                                        ),
                                      ),
                                      SizedBox(width: 12,),
                                      IconButton(
                                        icon: Image.network(
                                          'https://cdn-icons-png.freepik.com/512/0/618.png',
                                          height: 24,
                                          width: 22,
                                        ),
                                        onPressed: () => _launchURL(member['linkdin']!),
                                      ),
                                      IconButton(
                                        icon: Image.network(
                                          'https://image.similarpng.com/very-thumbnail/2020/06/Black-icon-Twitter-logo-transparent-PNG.png',
                                          height: 26,
                                          width: 24,
                                        ),
                                        onPressed: () => _launchURL(member['twitter']!),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),


      
    );
  }
}
