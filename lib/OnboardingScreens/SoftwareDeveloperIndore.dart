import 'package:find_your_job/OnboardingScreens/PrivacyScreen.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class SoftwareDeveloperIndore extends StatefulWidget {
  const SoftwareDeveloperIndore({super.key});
  @override
  State<SoftwareDeveloperIndore> createState() => _SoftwareDeveloperIndoreState();
}

class _SoftwareDeveloperIndoreState extends State<SoftwareDeveloperIndore> {
  bool showFullDescription = false;

  void toggleDescription() {
    setState(() {
      showFullDescription = !showFullDescription;
    });
  }

  void _launchURL() async {
    const url = 'https://docs.google.com/forms/d/e/1FAIpQLSdVsunE2ahkJmEQmsZGOZ7k8cfPv4mape97fXjvcipwElpC0w/viewform?usp=sf_link';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }



void _launchURLforHR() async {
    const url = 'https://docs.google.com/forms/d/e/1FAIpQLSdGTBtsZ7ZM0GtLjdCDEhoTMvx9Z4yY7ypkCouZ3nWY1l04bw/viewform?usp=sf_link';
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
        title: const Text(''),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {
              _shareContent(context);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text("Software Developer",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            const Row(
              children: [
                    Padding(
                       padding: EdgeInsets.only(left: 24,top: 4),
                       child: Text("Tata Consultancy Services,TCS",style: TextStyle(fontSize: 20),),
                        ),
                      ],
                    ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.location_on),
                        onPressed: () {
                          _shareContent(context);
                        },
                      ),
                      const Text("Super Corridor Rd,Tigaria Badshah,Indore,MP",style: TextStyle(fontSize: 13),),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              color: Colors.black26,
              thickness: 1,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text("Profile insights",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
                ),
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text("Here's how the job qualification align with your profile.",style: TextStyle(fontSize: 13.5),),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18,top: 8),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.light_mode),
                        iconSize: 25,
                        onPressed: () {
                          _shareContent(context);
                        },
                      ),
                      const Text("Skills",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Column(
                children: [
                  Row(
                      children: [
                        Container(
                          constraints: const BoxConstraints(
                            minWidth: 0.0,
                            maxWidth: 300,
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(169, 169, 169, 0.5),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Padding(
                                padding: EdgeInsets.only(left: 4,right: 4),
                                child: Text("Java Programming", style: TextStyle(fontSize: 16)),

                              ),

                          ),
                        const SizedBox(width: 10),

                        Container(
                          constraints: const BoxConstraints(
                            minWidth: 0.0,
                            maxWidth: 300,
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(169, 169, 169, 0.5),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 4,right: 4),
                            child: Text("C Programming", style: TextStyle(fontSize: 16)),

                          ),

                        ),
                       const SizedBox(width: 10),

                      ],
                    ),
                  const SizedBox(height: 8),
                  Row(
                      children: [
                        Container(
                          constraints: const BoxConstraints(
                            minWidth: 0.0,
                            maxWidth: 300,
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(169, 169, 169, 0.5),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Padding(
                                padding: EdgeInsets.only(left: 4,right: 4),
                                child: Text("JavaScript", style: TextStyle(fontSize: 16)),

                              ),

                          ),
                        const SizedBox(width: 10),

                        Container(
                          constraints: const BoxConstraints(
                            minWidth: 0.0,
                            maxWidth: 300,
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(169, 169, 169, 0.5),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 4,right: 4),
                            child: Text("Anslysis Skills", style: TextStyle(fontSize: 16)),

                          ),

                        ),
                       const SizedBox(width: 10),Container(
                          constraints: const BoxConstraints(
                            minWidth: 0.0,
                            maxWidth: 300,
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(169, 169, 169, 0.5),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 4,right: 4),
                            child: Text("C++", style: TextStyle(fontSize: 16)),

                          ),

                        ),
                       const SizedBox(width: 10),

                      ],
                    ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Container(
                        constraints: const BoxConstraints(
                          minWidth: 0.0,
                          maxWidth: 300,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(169, 169, 169, 0.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 4,right: 4),
                          child: Text("Eclipse", style: TextStyle(fontSize: 16)),

                        ),

                      ),
                      const SizedBox(width: 10),

                      Container(
                        constraints: const BoxConstraints(
                          minWidth: 0.0,
                          maxWidth: 300,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(169, 169, 169, 0.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 4,right: 4),
                          child: Text("Debian OS", style: TextStyle(fontSize: 16)),

                        ),

                      ),
                      const SizedBox(width: 10),Container(
                        constraints: const BoxConstraints(
                          minWidth: 0.0,
                          maxWidth: 300,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(169, 169, 169, 0.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 4,right: 4),
                          child: Text("Middleware", style: TextStyle(fontSize: 16)),

                        ),

                      ),
                      const SizedBox(width: 10),



                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18,top: 8),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.menu_book_sharp),
                        iconSize: 25,
                        onPressed: () {
                          _shareContent(context);
                        },
                      ),
                      const Text("Education",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        constraints: const BoxConstraints(
                          minWidth: 0.0,
                          maxWidth: 300,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(169, 169, 169, 0.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 4,right: 4),
                          child: Text("Bachelor's Degree", style: TextStyle(fontSize: 16)),

                        ),

                      ),
                      const SizedBox(width: 10),

                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Container(
                        constraints: const BoxConstraints(
                          minWidth: 0.0,
                          maxWidth: 300,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(169, 169, 169, 0.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 4,right: 4),
                          child: Text("Diploma Degree", style: TextStyle(fontSize: 16)),

                        ),

                      ),
                      const SizedBox(width: 10),

                    ],
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Divider(
              color: Colors.black26,
              thickness: 1,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text("Jobs Details",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18,top: 8),
                  child: Row(
                    children: [
                      IconButton(
                       icon: const Icon(Icons.payments_outlined),
                        iconSize: 25,
                        onPressed: () {
                          _shareContent(context);
                        },
                      ),
                      const Text("Pays",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        constraints: const BoxConstraints(
                          minWidth: 0.0,
                          maxWidth: 300,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(169, 169, 169, 0.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 4,right: 4),
                          child: Text("50,000 - 70,000 per month", style: TextStyle(fontSize: 16)),
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18,top: 8),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.shopping_bag_outlined),
                        iconSize: 25,
                        onPressed: () {
                          _shareContent(context);
                        },
                      ),
                      const Text("Job Type",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        constraints: const BoxConstraints(
                          minWidth: 0.0,
                          maxWidth: 300,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(169, 169, 169, 0.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 4,right: 4),
                          child: Text("Full Time", style: TextStyle(fontSize: 16)),

                        ),

                      ),
                      const SizedBox(width: 10),

                    ],
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
            const SizedBox(height: 10),


            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18,top: 8),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.access_time_filled_rounded),
                        iconSize: 25,
                        onPressed: () {
                          _shareContent(context);
                        },
                      ),
                      const Text("Shift & Schedule",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        constraints: const BoxConstraints(
                          minWidth: 0.0,
                          maxWidth: 300,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(169, 169, 169, 0.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 4,right: 4),
                          child: Text("Day Shift", style: TextStyle(fontSize: 16)),

                        ),

                      ),
                      const SizedBox(width: 10),
                      Container(
                        constraints: const BoxConstraints(
                          minWidth: 0.0,
                          maxWidth: 300,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(169, 169, 169, 0.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 4,right: 4),
                          child: Text("Monday - Friday", style: TextStyle(fontSize: 16)),

                        ),

                      ),
                      const SizedBox(width: 10),

                    ],
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
            const SizedBox(height: 10),

            const Divider(
              color: Colors.black26,
              thickness: 1,
            ),

            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text("Benefits",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
                ),
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15,top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '\t\t\t\t• Health insurance\n'
                            '\t\t\t\t• Life insurance\n'
                            '\t\t\t\t• Paid sick time\n'
                            '\t\t\t\t• Provident Fund',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              color: Colors.black26,
              thickness: 1,
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Full Job Description',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10,top: 12),
                            child: Text(
                              'Role : ',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text("Software Developer", style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 14,left: 10),
                        child: Text("Educatiion / Qualificatioon", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),Padding(
                        padding: const EdgeInsets.only(top: 5,left: 10),
                        child: Text("MTech/BTech/BE \n(Computer Science / IT)", style: const TextStyle(fontSize: 18),
                          maxLines: showFullDescription ? null : 2,
                          overflow: TextOverflow.ellipsis,

                        ),
                      ),

                     if (!showFullDescription)
                       GestureDetector(
                        onTap: toggleDescription,
                           child: const Padding(
                             padding: EdgeInsets.symmetric(horizontal: 10),
                             child: Row(
                               children: [
                                 Text(
                                           'More',
                                             style: TextStyle(
                                             color: Colors.blue, decoration: TextDecoration.underline,fontSize: 20
                                        ),
                                 ),
                                 Icon(
                                   MyIcons.arrowDropDown,
                                   size: 40,
                                 ),
                               ],
                             ),

                           ),
                          ),

                     if (showFullDescription)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 10,top: 14),
                            child: Text(
                              'Experience',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                             ),
                            ),

                          Container(
                            constraints: BoxConstraints(
                                maxWidth: MediaQuery.of(context).size.width -20
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(top: 5, left: 10),
                              child: Column(
                                children: [
                                  Text(
                                    '5+ years hands-on experience for program Manager/Leader Developer.',
                                    style: TextStyle(fontSize: 18),),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 5, left: 2),
                                        child: Text("3+ years for Software Developer.", style: TextStyle(fontSize: 18),),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10,top: 14),
                            child: Text(
                              'Skill Sets',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            constraints: BoxConstraints(
                                maxWidth: MediaQuery.of(context).size.width -20
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(top: 5, left: 10),
                              child: Column(
                                children: [
                                  Text(
                                    'One more skill sets listed below to fit in diffrent positions in the development team.',
                                    style: TextStyle(fontSize: 18),),SizedBox(height: 8,),
                                  Text("Hands on experience in HTTPS,Web Socket,Socket programming & etc.", style: TextStyle(fontSize: 18),),SizedBox(height: 8,),
                                  Row(
                                    children: [
                                      Text("Good Analytical skills.", style: TextStyle(fontSize: 18),),
                                    ],
                                  ),SizedBox(height: 8,), Row(
                                    children: [
                                      Text("Looking for long term association.", style: TextStyle(fontSize: 18),),
                                    ],
                                  ),SizedBox(height: 8,),


                                ],
                              ),
                            ),
                          ),



    // Add more education/qualification items here if needed


                    GestureDetector(
                      onTap: toggleDescription,
                      child:  const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Text('Less', style: TextStyle(color: Colors.blue,
                              decoration: TextDecoration.underline,fontSize: 20
                            ),
                            ),
                            Icon(
                              MyIconss.arrow_upward,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                       ),

                      ],
                  ),
               ],
              ),
              ),

             ],
            ),

            const Divider(
              color: Colors.black26,
              thickness: 1,
            ),
            const SizedBox(height: 10),

  Center(
         child: SizedBox(
             width: 300, // Adjust the width as needed
             height: 50, // Adjust the height as needed
             child: ElevatedButton(
               onPressed: _launchURL,
               style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(4, 2, 115, 1),
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                   child: const Text('Apply Now ', style: TextStyle(fontSize: 20,color: Colors.white)),
            ),
         ),
          ),const SizedBox(height: 8,),
            Center(
              child: SizedBox(
                width: 300, // Adjust the width as needed
                height: 50, // Adjust the height as needed
                child: ElevatedButton(
                  onPressed: _launchURLforHR,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(211, 211, 211, 0.7),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      )
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 38),
                        child: IconButton(
                          icon: const Icon(Icons.call),
                          iconSize: 25,
                          color: Colors.black,
                          onPressed: () {
                            _shareContent(context);
                          },
                        ),
                      ),
                      const Text('Contact HR', style: TextStyle(fontSize: 20,color: Colors.black)),
                    ],
                  ),
                ),
              ),
            ),const SizedBox(height: 15,),

            Center(
              child: SizedBox(
                width: 300, // Adjust the width as needed
                height: 50, // Adjust the height as needed
                child: ElevatedButton(
                  onPressed: () {
                    // Add your onPressed logic here
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(211, 211, 211, 0.7),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      )
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 38),
                        child: IconButton(
                          icon: const Icon(Icons.bookmark_border),
                          iconSize: 25,
                          color: Colors.black,
                          onPressed: () {
                            _shareContent(context);
                          },
                        ),
                      ),
                      const Text('Save this job', style: TextStyle(fontSize: 20,color: Colors.black)),
                    ],
                  ),
                ),
              ),
            ),const SizedBox(height: 15,),
            const Divider(
              color: Colors.black26,
              thickness: 1,
            ),const SizedBox(height: 15,),


            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10 ),
                  child: Text("2024 JoBiz",style: TextStyle(fontSize: 14),),
                ),
              ],
            ),const SizedBox(height: 5,),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10 ),
                  child: Text("Accessibility at Inded",style: TextStyle(fontSize: 14),),
                ),
              ],
            ),const SizedBox(height: 5,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10 ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PrivacyScreen() ));
                  },
                    child: const Text("Privacy Center and Ad Choices\tTerms",style: TextStyle(fontSize: 14,decoration: TextDecoration.underline),),
                  ),
                ),
              ],
            ),const SizedBox(height: 20,),






    ],
        ),

      )
    );
  }

  void _shareContent(BuildContext context) {
    final RenderBox box = context.findRenderObject() as RenderBox;
    Share.share(
      'Hello,I am Nikhil!!!',
      subject: 'Explore Indore',
      sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size,
    );
  }

  Future<void> _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _shareViaWhatsApp() {
    _launchUrl('https://wa.me/?text=Check%20out%20Indore!');
  }

  void _shareViaInstagram() {
    _launchUrl('https://www.instagram.com/');
  }

  void _shareViaGoogle() {
    _launchUrl('https://www.google.com/');
  }
}

class MyIcons {
  static const IconData arrowDropDown =
  IconData(0xe098, fontFamily: 'MaterialIcons');
}
class MyIconss {
  static const IconData arrow_upward = IconData(0xe0a0, fontFamily: 'MaterialIcons');
}



