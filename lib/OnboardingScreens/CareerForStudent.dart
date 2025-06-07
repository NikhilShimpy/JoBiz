import 'package:find_your_job/OnboardingScreens/ContestsStudent.dart';
import 'package:find_your_job/OnboardingScreens/Home.dart';
import 'package:find_your_job/OnboardingScreens/JobScreen.dart';
import 'package:find_your_job/OnboardingScreens/boostSkill.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StudentPage extends StatefulWidget {
  const StudentPage({super.key});

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Student Section',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 2),
            SizedBox(
              height: 200.0,
              width: MediaQuery.of(context).size.width, // Match the width to the screen size
              child: Image.asset(
                'assets/image/students.png',
                fit: BoxFit.cover, // Adjusts the image size based on the height and width
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(left: 15,right: 15,bottom: 4,),
                child: Text("Embrace your career with self assurance",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
              ),
            ),

            Container(
              width: 330,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black45,
                  width: 0.5,

                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Column(
                    children: [

                      Row(
                        children: [
                          const Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10,right: 5),
                              child: Text("Boost skills & find career guidance",
                                style: TextStyle(fontSize: 16,),
                                textAlign: TextAlign.center,
                                softWrap: true,
                              ),
                            ),
                          ),
                          IconButton(

                            icon: const Icon(Icons.arrow_forward_ios_rounded,size: 20,color: Color.fromRGBO(4, 2, 115, 0.9),),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => NcatPage()),
                              );


                            },
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              width: 330,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black45,
                  width: 0.5,

                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Column(
                    children: [

                      Row(
                        children: [
                          const Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10,right: 5),
                              child: Text("Join & earn exciting rewards",
                                style: TextStyle(fontSize: 16,),
                                textAlign: TextAlign.center,
                                softWrap: true,
                              ),
                            ),
                          ),
                          const SizedBox(width: 45,),
                          IconButton(

                            icon: const Icon(Icons.arrow_forward_ios_rounded,size: 20,color: Color.fromRGBO(4, 2, 115, 0.9),),
                            onPressed: () {

                            },
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              width: 330,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black45,
                  width: 0.5,

                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Column(
                    children: [

                      Row(
                        children: [
                          const Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10,right: 5),
                              child: Text("Dive into exciting opportunities",
                                style: TextStyle(fontSize: 16,),
                                textAlign: TextAlign.center,
                                softWrap: true,
                              ),
                            ),
                          ),
                          const SizedBox(width: 25,),
                          IconButton(

                            icon: const Icon(Icons.arrow_forward_ios_rounded,size: 20,color: Color.fromRGBO(4, 2, 115, 0.9),),
                            onPressed: () {

                            },
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 18,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.people_alt_outlined,size: 20,),
                    onPressed: () {
                    },
                  ),
                  const Text("Trusted by 1M+ Students"),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(width: 10),
                SizedBox(
                  width: 250,
                  child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      "Popular contest among students",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30,bottom: 10),
                    child: GestureDetector(
                      onTap: () {
                        // Add your onTap logic here
                      },
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => contest()),
                          );
                        },
                        child: Text(
                          "View all",
                          style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [

                    Center(
                      child: Container(
                        width: 330,
                        height: 320,
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 240,// set the width as needed
                                      height: 30, // set the height as needed
                                      child: Image.asset('assets/image/QuizStudentnow.png', fit: BoxFit.cover,),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15,top: 5),
                                  child: Row(
                                    children: [
                                      Text('JoBiz campus presents',style: TextStyle(fontSize: 15,color: Colors.black45),),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Text("Artificial Intelligence and Machine Learning",
                                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                    softWrap: true,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15,top: 10),
                                      child: Row(
                                        children: [
                                          Text('Rounds : ',style: TextStyle(fontSize: 15,color: Colors.black45),),
                                          Text('1',style: TextStyle(fontSize: 15,color: Colors.black),),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10),
                                            child: Text('Duration : ',style: TextStyle(fontSize: 15,color: Colors.black45),),
                                          ),
                                          Text('45 mins, 24 June',style: TextStyle(fontSize: 15,color: Colors.black),),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15,top: 10),
                                      child:
                                          Row(
                                            children: [
                                              Text('Participants : ',style: TextStyle(fontSize: 15,color: Colors.black45),),
                                              Text('Individual ',style: TextStyle(fontSize: 15,color: Colors.black),),

                                            ],
                                          ),
                                    ),
                                  ],
                                ),SizedBox(height: 10,),

                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black45,
                                                width: 0.5,
                                              ),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: Material(
                                              elevation: 0, // Remove the shadow
                                              borderRadius: BorderRadius.circular(5),
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                                child: Text(
                                                  "#Artificialintelligence",
                                                  style: TextStyle(fontSize: 10.5),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 0,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black45,
                                                width: 0.5,
                                              ),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: Material(
                                              elevation: 0, // Remove the shadow
                                              borderRadius: BorderRadius.circular(5),
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                                child: Text(
                                                  "#coding",
                                                  style: TextStyle(fontSize: 10.5),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black45,
                                            width: 0.5,
                                          ),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Material(
                                          elevation: 0, // Remove the shadow
                                          borderRadius: BorderRadius.circular(5),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                            child: Text(
                                              "#machinelearning",
                                              style: TextStyle(fontSize: 10.5),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 15,),

                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black45,
                                            width: 0.5,
                                          ),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Material(
                                          elevation: 0, // Remove the shadow
                                          borderRadius: BorderRadius.circular(5),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "1580 Enrolled",
                                                  style: TextStyle(fontSize: 15,color: Colors.purple),
                                                  textAlign: TextAlign.center,
                                                ),
                                                
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),SizedBox(width: 10,),
                                      Text("Reg. closes on June 24, 8 pm",style: TextStyle(fontSize: 12,color: Colors.black45),)
                                    ],
                                   
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Center(
                      child: Container(
                        width: 330,
                        height: 320,
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 240,// set the width as needed
                                      height: 30, // set the height as needed
                                      child: Image.asset('assets/image/QuizStudentnow.png', fit: BoxFit.cover,),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15,top: 5),
                                  child: Row(
                                    children: [
                                      Text('JoBiz campus presents',style: TextStyle(fontSize: 15,color: Colors.black45),),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Text("The Ultimate Coding Challenge",
                                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                    softWrap: true,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15,top: 10),
                                      child: Row(
                                        children: [
                                          Text('Rounds : ',style: TextStyle(fontSize: 15,color: Colors.black45),),
                                          Text('1',style: TextStyle(fontSize: 15,color: Colors.black),),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10),
                                            child: Text('Duration : ',style: TextStyle(fontSize: 15,color: Colors.black45),),
                                          ),
                                          Text('2 hr, 20 March',style: TextStyle(fontSize: 15,color: Colors.black),),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15,top: 10),
                                      child:
                                          Row(
                                            children: [
                                              Text('Participants : ',style: TextStyle(fontSize: 15,color: Colors.black45),),
                                              Text('Individual ',style: TextStyle(fontSize: 15,color: Colors.black),),

                                            ],
                                          ),
                                    ),
                                  ],
                                ),SizedBox(height: 10,),

                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black45,
                                                width: 0.5,
                                              ),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: Material(
                                              elevation: 0, // Remove the shadow
                                              borderRadius: BorderRadius.circular(5),
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                                child: Text(
                                                  "#codingcontest",
                                                  style: TextStyle(fontSize: 10.5),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 0,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black45,
                                                width: 0.5,
                                              ),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: Material(
                                              elevation: 0, // Remove the shadow
                                              borderRadius: BorderRadius.circular(5),
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                                child: Text(
                                                  "#programming",
                                                  style: TextStyle(fontSize: 10.5),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black45,
                                            width: 0.5,
                                          ),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Material(
                                          elevation: 0, // Remove the shadow
                                          borderRadius: BorderRadius.circular(5),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                            child: Text(
                                              "#coding",
                                              style: TextStyle(fontSize: 10.5),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 15,top: 5),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.verified_user_outlined,size: 20,),
                                        onPressed: () {
                                        },
                                      ),
                                      Text('Contest Completed',style: TextStyle(fontSize: 16,color: Colors.black),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Center(
                      child: Container(
                        width: 330,
                        height: 320,
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 240,// set the width as needed
                                      height: 30, // set the height as needed
                                      child: Image.asset('assets/image/QuizStudentnow.png', fit: BoxFit.cover,),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15,top: 5),
                                  child: Row(
                                    children: [
                                      Text('JoBiz campus presents',style: TextStyle(fontSize: 15,color: Colors.black45),),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Text("All Things Business",
                                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                    softWrap: true,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15,top: 10),
                                      child: Row(
                                        children: [
                                          Text('Rounds : ',style: TextStyle(fontSize: 15,color: Colors.black45),),
                                          Text('1',style: TextStyle(fontSize: 15,color: Colors.black),),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10),
                                            child: Text('Duration : ',style: TextStyle(fontSize: 15,color: Colors.black45),),
                                          ),
                                          Text('30 mins, 9 June',style: TextStyle(fontSize: 15,color: Colors.black),),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15,top: 10),
                                      child:
                                      Row(
                                        children: [
                                          Text('Participants : ',style: TextStyle(fontSize: 15,color: Colors.black45),),
                                          Text('Individual ',style: TextStyle(fontSize: 15,color: Colors.black),),

                                        ],
                                      ),
                                    ),
                                  ],
                                ),SizedBox(height: 10,),

                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black45,
                                                width: 0.5,
                                              ),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: Material(
                                              elevation: 0, // Remove the shadow
                                              borderRadius: BorderRadius.circular(5),
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                                child: Text(
                                                  "#businessquiz",
                                                  style: TextStyle(fontSize: 10.5),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 0,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black45,
                                                width: 0.5,
                                              ),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: Material(
                                              elevation: 0, // Remove the shadow
                                              borderRadius: BorderRadius.circular(5),
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                                child: Text(
                                                  "#basic",
                                                  style: TextStyle(fontSize: 10.5),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black45,
                                            width: 0.5,
                                          ),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Material(
                                          elevation: 0, // Remove the shadow
                                          borderRadius: BorderRadius.circular(5),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                            child: Text(
                                              "#forbegineers",
                                              style: TextStyle(fontSize: 10.5),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 15,),

                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black45,
                                            width: 0.5,
                                          ),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Material(
                                          elevation: 0, // Remove the shadow
                                          borderRadius: BorderRadius.circular(5),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                            child: Text(
                                              "1580 Enrolled",
                                              style: TextStyle(fontSize: 15,color: Colors.purple),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ),SizedBox(width: 10,),
                                      Text("Reg. closes on June 9, 7 pm",style: TextStyle(fontSize: 12,color: Colors.black45),)

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Center(
                      child: Container(
                        width: 330,
                        height: 320,
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 240,// set the width as needed
                                      height: 30, // set the height as needed
                                      child: Image.asset('assets/image/QuizStudentnow.png', fit: BoxFit.cover,),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15,top: 5),
                                  child: Row(
                                    children: [
                                      Text('JoBiz campus presents',style: TextStyle(fontSize: 15,color: Colors.black45),),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Text("Cloud  Computing",
                                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                    softWrap: true,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15,top: 10),
                                      child: Row(
                                        children: [
                                          Text('Rounds : ',style: TextStyle(fontSize: 15,color: Colors.black45),),
                                          Text('2',style: TextStyle(fontSize: 15,color: Colors.black),),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10),
                                            child: Text('Duration : ',style: TextStyle(fontSize: 15,color: Colors.black45),),
                                          ),
                                          Text('2 hrs, 24 July',style: TextStyle(fontSize: 15,color: Colors.black),),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15,top: 10),
                                      child:
                                      Row(
                                        children: [
                                          Text('Participants : ',style: TextStyle(fontSize: 15,color: Colors.black45),),
                                          Text('Individual ',style: TextStyle(fontSize: 15,color: Colors.black),),

                                        ],
                                      ),
                                    ),
                                  ],
                                ),SizedBox(height: 10,),

                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black45,
                                                width: 0.5,
                                              ),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: Material(
                                              elevation: 0, // Remove the shadow
                                              borderRadius: BorderRadius.circular(5),
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                                child: Text(
                                                  "#CloudComputing",
                                                  style: TextStyle(fontSize: 10.5),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 0,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black45,
                                                width: 0.5,
                                              ),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: Material(
                                              elevation: 0, // Remove the shadow
                                              borderRadius: BorderRadius.circular(5),
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                                child: Text(
                                                  "#network",
                                                  style: TextStyle(fontSize: 10.5),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black45,
                                            width: 0.5,
                                          ),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Material(
                                          elevation: 0, // Remove the shadow
                                          borderRadius: BorderRadius.circular(5),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                            child: Text(
                                              "#cloud",
                                              style: TextStyle(fontSize: 10.5),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 15,),

                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black45,
                                            width: 0.5,
                                          ),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Material(
                                          elevation: 0, // Remove the shadow
                                          borderRadius: BorderRadius.circular(5),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "1230 Enrolled",
                                                  style: TextStyle(fontSize: 15,color: Colors.purple),
                                                  textAlign: TextAlign.center,
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                      ),SizedBox(width: 10,),
                                      Text("Reg. closes on July 24, 8 pm",style: TextStyle(fontSize: 12,color: Colors.black45),)
                                    ],

                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Center(
                      child: Container(
                        width: 330,
                        height: 320,
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 240,// set the width as needed
                                      height: 30, // set the height as needed
                                      child: Image.asset('assets/image/QuizStudentnow.png', fit: BoxFit.cover,),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15,top: 5),
                                  child: Row(
                                    children: [
                                      Text('JoBiz campus presents',style: TextStyle(fontSize: 15,color: Colors.black45),),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Text("Entrepreneurship Fundamentals",
                                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                    softWrap: true,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15,top: 10),
                                      child: Row(
                                        children: [
                                          Text('Rounds : ',style: TextStyle(fontSize: 15,color: Colors.black45),),
                                          Text('1',style: TextStyle(fontSize: 15,color: Colors.black),),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10),
                                            child: Text('Duration : ',style: TextStyle(fontSize: 15,color: Colors.black45),),
                                          ),
                                          Text('1 hrs 30 mins, 24 July',style: TextStyle(fontSize: 15,color: Colors.black),),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15,top: 10),
                                      child:
                                      Row(
                                        children: [
                                          Text('Participants : ',style: TextStyle(fontSize: 15,color: Colors.black45),),
                                          Text('Individual ',style: TextStyle(fontSize: 15,color: Colors.black),),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black45,
                                                width: 0.5,
                                              ),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: Material(
                                              elevation: 0, // Remove the shadow
                                              borderRadius: BorderRadius.circular(5),
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                                child: Text(
                                                  "#entrepreneurship",
                                                  style: TextStyle(fontSize: 10.5),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 0,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black45,
                                                width: 0.5,
                                              ),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: Material(
                                              elevation: 0, // Remove the shadow
                                              borderRadius: BorderRadius.circular(5),
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                                child: Text(
                                                  "#smallindustry",
                                                  style: TextStyle(fontSize: 10.5),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black45,
                                            width: 0.5,
                                          ),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Material(
                                          elevation: 0, // Remove the shadow
                                          borderRadius: BorderRadius.circular(5),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                            child: Text(
                                              "#Innovation",
                                              style: TextStyle(fontSize: 10.5),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 15,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black45,
                                            width: 0.5,
                                          ),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Material(
                                          elevation: 0, // Remove the shadow
                                          borderRadius: BorderRadius.circular(5),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "1450 Enrolled",
                                                  style: TextStyle(fontSize: 15,color: Colors.purple),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),SizedBox(width: 10,),
                                      Text("Reg. closes on August 14, 10 pm",style: TextStyle(fontSize: 12,color: Colors.black45),)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),





                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

