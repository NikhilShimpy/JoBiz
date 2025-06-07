import 'package:find_your_job/OnboardingScreens/GumastaNagar.dart';
import 'package:find_your_job/OnboardingScreens/HelpScreen.dart';
import 'package:find_your_job/OnboardingScreens/MyProfileScreen.dart';
import 'package:find_your_job/OnboardingScreens/RanjeetHanumanScreen.dart';
import 'package:find_your_job/OnboardingScreens/launch-company.dart';
import 'package:flutter/material.dart';

class BusinessScreen extends StatefulWidget{
  const BusinessScreen({super.key});


  @override
  _MySearchBarState createState() => _MySearchBarState();
}
class _MySearchBarState extends State<BusinessScreen> {
  bool showFullDescription = false;

  void toggleDescription() {
    setState(() {
      showFullDescription = !showFullDescription;
    });
  }
  final List<String> cities = [
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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false ,
        backgroundColor: Colors.black12,
        title: const Text('Business',style: TextStyle(color: Color.fromRGBO(229, 9, 20, 0.5),fontWeight: FontWeight.w500,fontSize: 28),),
        actions: [
          PopupMenuButton(
            iconColor: Colors.black,
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: 'Profile',
                  child: Text('Profile'),
                ),
                const PopupMenuItem(
                  value: 'Launch_Company',
                  child: Text('Launch Company'),
                ),
                const PopupMenuItem(
                  value: 'Help',
                  child: Text('Help'),
                ),
              ];
            },
            onSelected: (value) {
              if (value == 'Profile') {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfileScreen()),);

                // Navigate to settings page
              } else if (value == 'Launch_Company') {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LaunchCompany()),);

                // Navigate to help page
              } else if (value == 'Help') {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HelpScreen()),);

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
                "Select city area to open Local Business",
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
                              builder: (context) => const RanjeetHanumanScreen(),
                            ),
                          );
                          break;
                        case 'Gumasta Nagar':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const GumastaNagarScreen(),
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Launch Your Business\n \t Today with JoBiz",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10), const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Seamless,Fast, and Trailored for Global\n \t\t\t Entrepreneur.JoBiz offers all the \nservices,tools and resources you need.",
                  style: TextStyle(fontSize: 18, ),
                ),
              ),
              const SizedBox(height: 15),

              Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(

                  border: Border.all(
                    color: Colors.black,
                    width: 1.0, // Adjust the width of the border as needed
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  //color: Color.fromRGBO(229, 216, 171, 0.5),// Adjust the radius as needed
                ),
                child: Column(
                  children: [
                    const Padding(
                      // padding: const EdgeInsets.only(left: 40,top: 15),
                      padding: EdgeInsets.symmetric(horizontal: 38,vertical: 10),
                      child: Text("Choose the Right Kind\n\t\t\t\t\t\t\t of Business ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    ),
                    const Padding(
                      // padding: const EdgeInsets.only(left: 40,top: 15),
                      padding: EdgeInsets.symmetric(horizontal: 38,vertical: 3),
                      child: Text("TYPES OF BUSINESS",style: TextStyle(fontSize: 20),),
                    ),const SizedBox(height: 0),

                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: SizedBox(
                              width: 330, // set the width as needed
                              height: 200, // set the height as needed
                              child: Image.asset('assets/image/allB.png'),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],

                ), // Your content goes here
              ),
              const SizedBox(height: 20),

              Container(
                decoration: const BoxDecoration(
                  color: Colors.black12, // Pencil color in RGB

                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: Text(
                              "How this app works?",
                              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold ,color: Color.fromRGBO(254, 75, 3,0.5)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text(
                                "1 Select the city area in search bar.",
                                style: TextStyle(fontSize: 18, ),
                              ),
                            ],
                          ),
                        ),const SizedBox(height: 5),

                        Padding(
                          padding: const EdgeInsets.only(left: 19),
                          child: Container(
                            height: 130,
                            width: 350,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1, // Adjust the width of the border as needed
                              ),
                              //borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              //color: Color.fromRGBO(229, 216, 171, 0.5),// Adjust the radius as needed
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 0),
                                    child: SizedBox(
                                      width: 330, // set the width as needed
                                      height: 150, // set the height as needed
                                      child: Image.asset('assets/image/searchbar.png'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),const SizedBox(height: 15),

                        if (!showFullDescription)
                          GestureDetector(
                            onTap: toggleDescription,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text(
                                      'Read More',
                                      style: TextStyle(
                                          color: Colors.blue, decoration: TextDecoration.underline,fontSize: 20
                                      ),
                                    ),
                                  ),
                                  /*
                              Icon(
                                MyIcons.arrowDropDown,
                                size: 40,
                              ),
                               */

                                ],
                              ),

                            ),
                          ),

                        if (showFullDescription)
                          Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      "2 Write city area in search bar to select \n\t\t city area.",
                                      style: TextStyle(fontSize: 18, ),
                                    ),
                                  ],
                                ),
                              ),const SizedBox(height: 5),
                              Container(
                                height: 260,
                                width: 350,
                                decoration: BoxDecoration(

                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1, // Adjust the width of the border as needed
                                  ),
                                  //borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  //color: Color.fromRGBO(229, 216, 171, 0.5),// Adjust the radius as needed
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 0),
                                        child: SizedBox(
                                          width: 300, // set the width as needed
                                          height: 300, // set the height as needed
                                          child: Image.asset('assets/image/searchbarLocation.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),const SizedBox(height: 10),
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      "3 After selecting city area, you will see \n\t\t some interface like this.",
                                      style: TextStyle(fontSize: 18, ),
                                    ),
                                  ],
                                ),
                              ),const SizedBox(height: 5),
                              Container(
                                height: 400,
                                width: 350,
                                decoration: BoxDecoration(

                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1, // Adjust the width of the border as needed
                                  ),
                                  //borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  //color: Color.fromRGBO(229, 216, 171, 0.5),// Adjust the radius as needed
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 0),
                                        child: SizedBox(
                                          width: 300, // set the width as needed
                                          height: 380, // set the height as needed
                                          child: Image.asset('assets/image/homepageB.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),const SizedBox(height: 5),
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      "Here pie chart showing the number of shop in \nthat particular area out of 100 percent.",
                                      style: TextStyle(fontSize: 15, ),
                                    ),
                                  ],
                                ),
                              ),const SizedBox(height: 5),
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      "If you want to see how many shops i.e clothes,\netc are there in that area then click here.",
                                      style: TextStyle(fontSize: 15, ),
                                    ),
                                  ],
                                ),
                              ),const SizedBox(height: 5),
                              Container(
                                height: 130,
                                width: 350,
                                decoration: BoxDecoration(

                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1, // Adjust the width of the border as needed
                                  ),
                                  //borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  //color: Color.fromRGBO(229, 216, 171, 0.5),// Adjust the radius as needed
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 0),
                                        child: SizedBox(
                                          width: 300, // set the width as needed
                                          height: 380, // set the height as needed
                                          child: Image.asset('assets/image/analysisShop.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),const SizedBox(height: 5),
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      "4 After clicking on it you will see an inte-\n\t\t\t-rface like this.",
                                      style: TextStyle(fontSize: 18, ),
                                    ),
                                  ],
                                ),
                              ),const SizedBox(height: 5),
                              Container(
                                height: 260,
                                width: 350,
                                decoration: BoxDecoration(

                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1, // Adjust the width of the border as needed
                                  ),
                                  //borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  //color: Color.fromRGBO(229, 216, 171, 0.5),// Adjust the radius as needed
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 0),
                                        child: SizedBox(
                                          width: 300, // set the width as needed
                                          height: 300, // set the height as needed
                                          child: Image.asset('assets/image/listB.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),const SizedBox(height: 10),
                              GestureDetector(
                                onTap: toggleDescription,
                                child:  const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Text('View Less', style: TextStyle(color: Colors.blue,
                                            decoration: TextDecoration.underline,fontSize: 20
                                        ),
                                        ),
                                      ),
                                      /*
                                  Icon(
                                    MyIconss.arrow_upward,
                                    size: 25,
                                 ),
                                   */
                                    ],
                                  ),
                                ),
                              ),

                              const SizedBox(height: 20),
                              const Divider(
                                color: Colors.black26,
                                thickness: 1,
                              ),

                            ],
                          ),




                      ],
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
              const SizedBox(height: 15),


              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        width: 330, // set the width as needed
                        height: 80, // set the height as needed
                        child: Image.asset('assets/image/CompanyLogo.png'),
                      ),
                    ),
                  ],
                ),
              ), const SizedBox(height: 15),
              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("    How the Best\nStartups Get Legal\n  Paperwork Done",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),const SizedBox(height: 10),
              const Center(
                child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("JoBiz is the only online legal service obsessed with helping startup founders get legal paperwork done safely. Get your legal paperwork done with confidence, so you can get back to building your startup.",
                        style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                        softWrap: true,
                      ),
                    ),
              ),const SizedBox(height: 15),

              Center(
                child: Container(
                  width: 170, // Adjust width as needed
                  height: 50, // Adjust height as needed
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
                      // Add your onPressed logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(4, 2, 115, 0.8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                    ),
                    child: const Text('Get Started', style: TextStyle(fontSize: 20,color: Colors.white)),
                  ),
                ),
              ),const SizedBox(height: 15),
              const Divider(
                color: Colors.black26,
                thickness: 1,
              ),
              const SizedBox(height: 15),

              Container(
                height: 360,
                width: 330,
                decoration: BoxDecoration(

                  border: Border.all(
                    color: Colors.black,
                    width: 1.0, // Adjust the width of the border as needed
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  //color: Color.fromRGBO(229, 216, 171, 0.5),// Adjust the radius as needed
                ),
                child: Column(
                  children: [
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Text("Launch a Company in India, from anywhere ",
                          style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                          softWrap: true,
                        ),
                      ),
                    ),
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 15,right: 15),
                        child: Text("Start your dream business in one click. Send documents Online. We will deliver everything including current bank account at your doorstep.",
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center,
                          softWrap: true,
                        ),
                      ),
                    ),const SizedBox(height: 15),
                    Center(
                      child: Container(
                        width: 170, // Adjust width as needed
                        height: 50, // Adjust height as needed
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
                              MaterialPageRoute(builder: (context) => const LaunchCompany()),);
                            // Add your onPressed logic here
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
                              Text('Get Started ', style: TextStyle(fontSize: 15,color: Colors.black,)),
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Icon(Icons.arrow_forward,color: Colors.black,size: 20,),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),const SizedBox(height: 15),

                  ],


                ), // Your content goes here
              ),
              const SizedBox(height: 20),
              const Divider(
                color: Colors.black26,
                thickness: 1,
              ),
              const SizedBox(height: 15),

              Container(
                width: 330,
                height: 170,
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
                            padding: EdgeInsets.only(left: 15,right: 15,bottom: 4,top: 5),
                            child: Text("Start your dream business and keep it 100% compliant",
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                              softWrap: true,
                            ),
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 12,right: 12,bottom: 15),
                            child: Text("Turn your dream idea into your dream business with JoBiz.",
                              style: TextStyle(fontSize: 12,),
                              textAlign: TextAlign.center,
                              softWrap: true,
                            ),
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Center(
                              child: Container(
                                width: 139, // Adjust width as needed
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
                                    // Add your onPressed logic here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromRGBO(4, 2, 115, 0.9),
                                    //backgroundColor: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(26),
                                    ),
                                  ),
                                  child: const Text('Start Your Business', style: TextStyle(fontSize: 10,color: Colors.white)),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                width: 135, // Adjust width as needed
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
                                    // Add your onPressed logic here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromRGBO(4, 2, 115, 0.9),
                                    //backgroundColor: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(26),
                                    ),
                                  ),
                                  child: const Text('Free Consultation', style: TextStyle(fontSize: 10,color: Colors.white)),
                                ),
                              ),
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18,),

            ],
          ],
        ),
      ),
    );
  }
}



class MyIcons {
  static const IconData arrowDropDown =
  IconData(0xe098, fontFamily: 'MaterialIcons');
}
class MyIconss {
  static const IconData arrow_upward = IconData(0xe0a0, fontFamily: 'MaterialIcons');
}

