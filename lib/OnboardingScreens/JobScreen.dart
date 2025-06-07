import 'package:find_your_job/OnboardingScreens/CareerForStudent.dart';
import 'package:find_your_job/OnboardingScreens/HelpScreen.dart';
import 'package:find_your_job/OnboardingScreens/JAnyWhereInIndore.dart';
import 'package:find_your_job/OnboardingScreens/JGumastaNagar.dart';
import 'package:find_your_job/OnboardingScreens/JobGumastaNagar.dart';
import 'package:find_your_job/OnboardingScreens/JobRanjeetHanuman.dart';
import 'package:find_your_job/OnboardingScreens/SettingScreen.dart';
import 'package:find_your_job/OnboardingScreens/aboutUs.dart';
import 'package:flutter/material.dart';


class JobScreen extends StatefulWidget{
  const JobScreen({super.key});


  @override
  _MySearchBarState createState() => _MySearchBarState();
}
class _MySearchBarState extends State<JobScreen> with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  double _scrollPosition = 0;
  final double _scrollSpeed = 1;
  final double _containerWidth = 150;
  final double _spacing = 20;
  final double _totalWidth = 10 * 150 + 9 * 20;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _controller.repeat();
    _controller.addListener(() {
      setState(() {
        _scrollPosition += _scrollSpeed;
        if (_scrollPosition >= _totalWidth + _spacing) {
          _scrollPosition = 0;
        }
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }



  bool showFullDescription = false;

  void toggleDescription() {
    setState(() {
      showFullDescription = !showFullDescription;
    });
  }
  final List<String> cities = [
    'Any where in Indore',
    'AB Road',
    'Annapurna Road',
    'Bengali Square',
    'Bhawarkua',
    'Dhar Road',
    'Footi Kothi',
    'Gangwal',
    'Gumasta Nagar',
    'Jawahar Marg',
    'Khajrana Road',
    'Khajuri Bazar',
    'Khandwa Road',
    'Lokmanya Nagar',
    'Manik Bagh',
    'MR 10 Road',
    'Navlakha,',
    'New Palasia',
    'Old Palasia',
    'Pardesi Puri',
    'Pipliyahana Square',
    'Ranjeet Hanuman',
    'Rajendra Nagar',
    'Rajwada',
    'Regal Square',
    'Silicon City',
  ];

  List<String> filteredCities = [];
  bool isSearching = false;

  @override
  Widget build(BuildContext context) {
    const containerWidth = 150.0;
    const spacing = 20.0;
    const totalWidth = containerWidth * 10 + spacing * 9;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false ,
        backgroundColor: Colors.black12,
        title: const Text('Job',style: TextStyle(color: Color.fromRGBO(229, 9, 20, 0.5),fontWeight: FontWeight.w500,fontSize: 28),),
        actions: [
          PopupMenuButton(
            iconColor: Colors.black,
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: 'settings',
                  child: Text('Settings'),
                ),
                const PopupMenuItem(
                  value: 'help',
                  child: Text('Help'),
                ),
                const PopupMenuItem(
                  value: 'aboutUs',
                  child: Text('About Us'),
                ),
              ];
            },
            onSelected: (value) {
              if (value == 'settings') {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingScreen()),);

                // Navigate to settings page
              } else if (value == 'help') {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HelpScreen()),);

                // Navigate to help page
              } else if (value == 'aboutUs') {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsPage()),);

              }
            },
          ),
        ],
      ),

      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 5),
              child: Text(
                "Select city area for Job",
                style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Search for a city area',
                  hintText: 'Search for a city area',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white,
                ),
                style: const TextStyle(color: Colors.black),
                onChanged: (value) {
                  setState(() {
                    isSearching = value.isNotEmpty;
                    filteredCities = cities
                        .where((city) =>
                        city.toLowerCase().contains(value.toLowerCase()))
                        .toList();
                  });
                },
              ),
            ),
            const SizedBox(height: 10),

            if (isSearching) ...[
              ListView.builder(
                shrinkWrap: true,
                itemCount: filteredCities.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(filteredCities[index]),
                    onTap: () {
                      switch (filteredCities[index]) {
                        case 'Ranjeet Hanuman':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const JRanjeetAnalysis(),
                            ),
                          );
                          break;
                        case 'Gumasta Nagar':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const GumastaNagar(),
                            ),
                          );
                          break;
                          case 'Any where in Indore':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const JAnyWhereInIndore(),
                            ),
                          );
                          break;


                      // Add cases for other cities (Bangalore, Hyderabad, Chennai)
                      }
                    },
                  );
                },
              ),
            ],

            if (!isSearching) ...[

               const Row(
                 children: [
                   SizedBox(height: 15),
                   Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text("Simple part/full time job \nMake money online easily",
                        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                      ),
                    ),
                 ],
               ),const SizedBox(height: 12),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Recruiting online part/full time employees nationwide ,\nNo experience or investment required\n You can earn at least Rs 15,000 per month by working part-time for half an hour.",
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                        softWrap: true,
                      ),
                    ),
                  ),const SizedBox(height: 15),

              Container(
                height: 100,
                width: 330,
                padding: const EdgeInsets.all(8), // Padding from the bigger container
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black), // Border for the bigger container
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // This will space out the child containers evenly
                  children: [
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          //border: Border.all(color: Colors.black), // Border for the inner container
                        ),
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.all(1.0),
                            child: Text('Part\nTime\nJob',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const VerticalDivider(
                      color: Colors.black26,
                      thickness: 1,
                    ),// Spacing between the containers
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          //border: Border.all(color: Colors.black), // Border for the inner container
                        ),
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.all(1.0),
                            child: Text('Full\nTime\nJob',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8), // Spacing between the containers
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(4, 2, 115, 2),
                          border: Border.all(color: Colors.black,), // Border for the inner container
                        ),

                        child: const Center(
                          child: Text('Contact\nUs',
                            style: TextStyle(color: Colors.white,fontSize: 16),textAlign: TextAlign.center,
                            softWrap: true),
                        ),
                      ),
                    ),
                  ],
                ),
              ),const SizedBox(height: 25,),
              const Divider(
                color: Colors.black26,
                thickness: 1,
              ),
              const SizedBox(height: 20),

              const Text("Trending on Jobiz",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

              const SizedBox(height: 15),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return Transform.translate(
                      offset: Offset(-_scrollPosition, 0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                           // for (int i = 0; i < 10; i++)
                              Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: 2,
                                      blurRadius: 7,
                                      offset: Offset(0, 5), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(26),
                                  color: Colors.white,
                                  //border: Border.all(color: Colors.black), // Border for the inner container
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 10),
                                        IconButton(
                                          icon: const Icon(Icons.laptop_chromebook),
                                          //icon: Icon(Icons.home_outlined),
                                          iconSize: 30,
                                          onPressed: () {

                                          },
                                        ),
                                        const SizedBox(height: 4),
                                        const Text('Software & IT ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        const SizedBox(height: 5),
                                        const Text('50K+ jobs',style: TextStyle(fontSize: 15,),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            const SizedBox(width: 18,),

                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 2,
                                    blurRadius: 7,
                                    offset: Offset(0, 5), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(26),
                                color: Colors.white,
                                //border: Border.all(color: Colors.black), // Border for the inner container
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 10),
                                       IconButton(
                                        icon: const Icon(Icons.addchart),
                                        iconSize: 30,
                                        onPressed: () {

                                        },
                                      ),const SizedBox(height: 4),
                                      const Text('Marketing',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                      const SizedBox(height: 5),
                                      const Text('20.1K+ jobs',style: TextStyle(fontSize: 15,),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 18,),

                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 2,
                                    blurRadius: 7,
                                    offset: Offset(0, 5), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(26),
                                color: Colors.white,
                                //border: Border.all(color: Colors.black), // Border for the inner container
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 10),
                                      IconButton(
                                        icon: const Icon(Icons.assessment),
                                        iconSize: 30,
                                        onPressed: () {

                                        },
                                      ), const SizedBox(height: 4),
                                      const Text('Data Science',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                      const SizedBox(height: 5),
                                      const Text('15.7K+ jobs',style: TextStyle(fontSize: 15,),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 18,),

                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 2,
                                    blurRadius: 7,
                                    offset: Offset(0, 5), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(26),
                                color: Colors.white,
                                //border: Border.all(color: Colors.black), // Border for the inner container
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 10),
                                      IconButton(
                                        icon: const Icon(Icons.currency_rupee_sharp),
                                        iconSize: 30,
                                        onPressed: () {

                                        },
                                      ), const SizedBox(height: 4),
                                      const Text('Banking & Fin...',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                      const SizedBox(height: 5),
                                      const Text('4.9K+ jobs',style: TextStyle(fontSize: 15,),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 18,),

                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 2,
                                    blurRadius: 7,
                                    offset: Offset(0, 5), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(26),
                                color: Colors.white,
                                //border: Border.all(color: Colors.black), // Border for the inner container
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 10),
                                      IconButton(
                                        icon: const Icon(Icons.add_home_work_outlined),
                                        iconSize: 30,
                                        onPressed: () {

                                        },
                                      ), const SizedBox(height: 4),
                                      const Text('MNC',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                      const SizedBox(height: 5),
                                      const Text('9.2K+ jobs',style: TextStyle(fontSize: 15,),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 18,),

                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 2,
                                    blurRadius: 7,
                                    offset: Offset(0, 5), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(26),
                                color: Colors.white,
                                //border: Border.all(color: Colors.black), // Border for the inner container
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 10),
                                      IconButton(
                                        icon: const Icon(Icons.engineering),
                                        iconSize: 30,
                                        onPressed: () {

                                        },
                                      ), const SizedBox(height: 4),
                                      const Text('Engineering',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                      const SizedBox(height: 5),
                                      const Text('23.6K+ jobs',style: TextStyle(fontSize: 15,),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 18,),

                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 2,
                                    blurRadius: 7,
                                    offset: Offset(0, 5), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(26),
                                color: Colors.white,
                                //border: Border.all(color: Colors.black), // Border for the inner container
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 10),
                                      IconButton(
                                        icon: const Icon(Icons.manage_search),
                                        iconSize: 30,
                                        onPressed: () {

                                        },
                                      ), const SizedBox(height: 4),
                                      const Text('Analytics',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                      const SizedBox(height: 5),
                                      const Text('5.3K+ jobs',style: TextStyle(fontSize: 15,),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 18,),

                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 2,
                                    blurRadius: 7,
                                    offset: Offset(0, 5), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(26),
                                color: Colors.white,
                                //border: Border.all(color: Colors.black), // Border for the inner container
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 10),
                                      IconButton(
                                        icon: const Icon(Icons.school),
                                        iconSize: 30,
                                        onPressed: () {

                                        },
                                      ), const SizedBox(height: 4),
                                      const Text('Fresher',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                      const SizedBox(height: 5),
                                      const Text('52.4K+ jobs',style: TextStyle(fontSize: 15,),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 18,),

                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 2,
                                    blurRadius: 7,
                                    offset: Offset(0, 5), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(26),
                                color: Colors.white,
                                //border: Border.all(color: Colors.black), // Border for the inner container
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 10),
                                      IconButton(
                                        icon: const Icon(Icons.people_alt_outlined),
                                        iconSize: 30,
                                        onPressed: () {

                                        },
                                      ), const SizedBox(height: 4),
                                      const Text('HR',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                      const SizedBox(height: 5),
                                      const Text('2.7K+ jobs',style: TextStyle(fontSize: 15,),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 18,),

                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 2,
                                    blurRadius: 7,
                                    offset: Offset(0, 5), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(26),
                                color: Colors.white,
                                //border: Border.all(color: Colors.black), // Border for the inner container
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 10),
                                      IconButton(
                                        icon: const Icon(Icons.rocket_launch_outlined),
                                        iconSize: 30,
                                        onPressed: () {

                                        },
                                      ), const SizedBox(height: 4),
                                      const Text('Startup',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                      const SizedBox(height: 5),
                                      const Text('1.7K+',style: TextStyle(fontSize: 15,),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 18,),
                          ],
                        ),
                      ),
                    );
                    },
                ),
              ),

              const SizedBox(height: 25,),
              const Divider(
                color: Colors.black26,
                thickness: 1,
              ),
              const SizedBox(height: 20,),

              const Text("Top companies hiring now",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              const SizedBox(height: 10,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [

                      Container(
                        width: 250,
                        height: 210,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 5), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(26),
                          color: Colors.white,
                          //border: Border.all(color: Colors.black), // Border for the inner container
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                const Text('Healthcare',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                const Text('118 are actively hiring ',style: TextStyle(fontSize: 15,),),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 209, // set the width as needed
                                      height: 120, // set the height as needed
                                      child: Image.asset('assets/image/healthcare.png'),
                                    ),
                                    ],
                                ),
                              GestureDetector(
                              onTap: () {
                                /*
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ExploreMorePage()),);

                                 */
                                },
                              child: const Padding(
                                padding: EdgeInsets.only(left: 40),
                                child: Row(
                                  children: [
                                    Text(
                                     'Explore',
                                       style: TextStyle(fontSize: 15,color: Colors.blue),
                                         ),
                                  ],
                                ),
                              ),
                               ),

                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 18,),

                      Container(
                        width: 250,
                        height: 210,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 5), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(26),
                          color: Colors.white,
                          //border: Border.all(color: Colors.black), // Border for the inner container
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                const Text('IT Company',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                const Text('448 are actively hiring ',style: TextStyle(fontSize: 15,),),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 209, // set the width as needed
                                      height: 120, // set the height as needed
                                      child: Image.asset('assets/image/itcompany.jpeg'),
                                    ),
                                    ],
                                ),
                              GestureDetector(
                              onTap: () {
                                /*
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ExploreMorePage()),);

                                 */
                                },
                              child: const Padding(
                                padding: EdgeInsets.only(left: 40),
                                child: Row(
                                  children: [
                                    Text(
                                     'Explore',
                                       style: TextStyle(fontSize: 15,color: Colors.blue),
                                         ),
                                  ],
                                ),
                              ),
                               ),

                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 18,),

                      Container(
                        width: 250,
                        height: 210,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 5), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(26),
                          color: Colors.white,
                          //border: Border.all(color: Colors.black), // Border for the inner container
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                const Text('MNCs',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                const Text('1.4K+ are actively hiring ',style: TextStyle(fontSize: 15,),),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 209, // set the width as needed
                                      height: 120, // set the height as needed
                                      child: Image.asset('assets/image/mnc.jpeg'),
                                    ),
                                    ],
                                ),
                              GestureDetector(
                              onTap: () {
                                /*
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ExploreMorePage()),);

                                 */
                                },
                              child: const Padding(
                                padding: EdgeInsets.only(left: 40),
                                child: Row(
                                  children: [
                                    Text(
                                     'Explore',
                                       style: TextStyle(fontSize: 15,color: Colors.blue),
                                         ),
                                  ],
                                ),
                              ),
                               ),

                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 18,),

                      Container(
                        width: 250,
                        height: 210,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 5), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(26),
                          color: Colors.white,
                          //border: Border.all(color: Colors.black), // Border for the inner container
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                const Text('Banking & Fin...',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                const Text('151 are actively hiring ',style: TextStyle(fontSize: 15,),),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 209, // set the width as needed
                                      height: 120, // set the height as needed
                                      child: Image.asset('assets/image/bank.jpeg'),
                                    ),
                                    ],
                                ),
                              GestureDetector(
                              onTap: () {
                                /*
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ExploreMorePage()),);

                                 */
                                },
                              child: const Padding(
                                padding: EdgeInsets.only(left: 40),
                                child: Row(
                                  children: [
                                    Text(
                                     'Explore',
                                       style: TextStyle(fontSize: 15,color: Colors.blue),
                                         ),
                                  ],
                                ),
                              ),
                               ),

                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 18,),

                      Container(
                        width: 250,
                        height: 210,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 5), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(26),
                          color: Colors.white,
                          //border: Border.all(color: Colors.black), // Border for the inner container
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                const Text('Startup',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                const Text('192 are actively hiring ',style: TextStyle(fontSize: 15,),),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 209, // set the width as needed
                                      height: 120, // set the height as needed
                                      child: Image.asset('assets/image/startup.jpg'),
                                    ),
                                    ],
                                ),
                              GestureDetector(
                              onTap: () {
                                /*
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ExploreMorePage()),);

                                 */
                                },
                              child: const Padding(
                                padding: EdgeInsets.only(left: 40),
                                child: Row(
                                  children: [
                                    Text(
                                     'Explore',
                                       style: TextStyle(fontSize: 15,color: Colors.blue),
                                         ),
                                  ],
                                ),
                              ),
                               ),

                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 18,),

                       Container(
                        width: 250,
                        height: 210,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 5), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(26),
                          color: Colors.white,
                          //border: Border.all(color: Colors.black), // Border for the inner container
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                const Text('Product',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                const Text('110 are actively hiring ',style: TextStyle(fontSize: 15,),),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 209, // set the width as needed
                                      height: 120, // set the height as needed
                                      child: Image.asset('assets/image/productcompany.jpg'),
                                    ),
                                    ],
                                ),
                              GestureDetector(
                              onTap: () {
                                /*
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ExploreMorePage()),);

                                 */
                                },
                              child: const Padding(
                                padding: EdgeInsets.only(left: 40),
                                child: Row(
                                  children: [
                                    Text(
                                     'Explore',
                                       style: TextStyle(fontSize: 15,color: Colors.blue),
                                         ),
                                  ],
                                ),
                              ),
                               ),

                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 18,),

                        Container(
                        width: 250,
                        height: 210,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 5), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(26),
                          color: Colors.white,
                          //border: Border.all(color: Colors.black), // Border for the inner container
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                const Text('Edtech',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                const Text('156 are actively hiring ',style: TextStyle(fontSize: 15,),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 209, // set the width as needed
                                      height: 120, // set the height as needed
                                      child: Image.asset('assets/image/edtech.png'),
                                    ),
                                    ],
                                ),
                              GestureDetector(
                              onTap: () {
                                /*
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ExploreMorePage()),);

                                 */
                                },
                              child: const Padding(
                                padding: EdgeInsets.only(left: 40),
                                child: Row(
                                  children: [
                                    Text(
                                     'Explore',
                                       style: TextStyle(fontSize: 15,color: Colors.blue),
                                         ),
                                  ],
                                ),
                              ),
                               ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 18,),

                      Container(
                        width: 250,
                        height: 210,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 5), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(26),
                          color: Colors.white,
                          //border: Border.all(color: Colors.black), // Border for the inner container
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                const Text('Manufacturing',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                const Text('246 are actively hiring ',style: TextStyle(fontSize: 15,),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 209, // set the width as needed
                                      height: 120, // set the height as needed
                                      child: Image.asset('assets/image/manufacturing.jpeg'),
                                    ),
                                    ],
                                ),
                              GestureDetector(
                              onTap: () {
                                /*
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ExploreMorePage()),);

                                 */
                                },
                              child: const Padding(
                                padding: EdgeInsets.only(left: 40),
                                child: Row(
                                  children: [
                                    Text(
                                     'Explore',
                                       style: TextStyle(fontSize: 15,color: Colors.blue),
                                         ),
                                  ],
                                ),
                              ),
                               ),

                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 18,),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Divider(
                color: Colors.black26,
                thickness: 1,
              ),
              const SizedBox(height: 20,),

              Container(
                width: 330,
                height: 150,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 5), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(26),
                  color: Colors.white,
                  //border: Border.all(color: Colors.black), // Border for the inner container
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 5,right: 5,bottom: 4),
                            child: Text("Introducing a career platform for college students & fresh grads",
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                              softWrap: true,
                            ),
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 5,right: 5,bottom: 8),
                            child: Text("Explore contests, webinars, take aptitude test, prepare for your dream career & find jobs & internships",
                              style: TextStyle(fontSize: 12,),
                              textAlign: TextAlign.center,
                              softWrap: true,
                            ),
                          ),
                        ),

                        Center(
                          child: Container(
                            width: 120, // Adjust width as needed
                            height: 30, // Adjust height as needed
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const StudentPage()),
                                );

                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromRGBO(4, 2, 115, 0.9),
                                //backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(26),
                                ),
                              ),
                              child: const Text('Explore Now', style: TextStyle(fontSize: 10,color: Colors.white)),
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 18,),

            ],
            const SizedBox(height: 20),


          ],
        ),
      ),
    );
  }
}
