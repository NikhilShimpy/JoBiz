import 'package:find_your_job/OnboardingScreens/Home.dart';
import 'package:find_your_job/OnboardingScreens/JobScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class contest extends StatefulWidget {
  const contest({super.key});
  @override
  State<contest> createState() => _contestState();
}
class _contestState extends State<contest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Contests',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          PopupMenuButton(
            iconColor: Colors.black,
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: 'settings',
                  child: Text('Create Contest'),
                ),
                const PopupMenuItem(
                  value: 'help',
                  child: Text('Help'),
                ),
                const PopupMenuItem(
                  value: 'aboutUs',
                  child: Text('Home'),
                ),
              ];
            },
            onSelected: (value) {
              if (value == 'settings') {

                // Navigate to settings page
              } else if (value == 'help') {

                // Navigate to help page
              } else if (value == 'aboutUs') {
                // Navigate to help page
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Popular contest among students",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
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
                    SizedBox(height: 15,),
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
                    SizedBox(height: 15,),
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
                    SizedBox(height: 15,),
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
                    SizedBox(height: 15,),
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
                    SizedBox(height: 15,),
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
                                  child: Text("Blockchain",
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
                                          Text('3',style: TextStyle(fontSize: 15,color: Colors.black),),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10),
                                            child: Text('Duration : ',style: TextStyle(fontSize: 15,color: Colors.black45),),
                                          ),
                                          Text('3hrs, 25 August',style: TextStyle(fontSize: 15,color: Colors.black),),
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
                                                  "#Consensus",
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
                                                  "#Decentralized",
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
                                                  "#publicBlockchain",
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
                                                  "#Mining",
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
                                                  "2552 Enrolled",
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
                    SizedBox(height: 15,),
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
                                  child: Text("Basic of Programming Language",
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
                                          Text('1 hrs, 14 July',style: TextStyle(fontSize: 15,color: Colors.black),),
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
                                                  "#programminglangauges",
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
                                                  "945 Enrolled",
                                                  style: TextStyle(fontSize: 15,color: Colors.purple),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),SizedBox(width: 10,),
                                      Text("Reg. closes on July 14, 10 pm",style: TextStyle(fontSize: 12,color: Colors.black45),)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
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
                                  child: Text("International Business",
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
                                                  "#relation",
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
                                                  "#businessQuiz",
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
                                                  "#business",
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
                                                  "#foreignRelation",
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
                                                  "454 Enrolled",
                                                  style: TextStyle(fontSize: 15,color: Colors.purple),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),SizedBox(width: 10,),
                                      Text("Reg. closes on July 24, 9 pm",style: TextStyle(fontSize: 12,color: Colors.black45),)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
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
                                  child: Text("Entrepreneurship and Startup",
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
                                          Text('3 hrs, 24 July',style: TextStyle(fontSize: 15,color: Colors.black),),
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
                                                  "#Startup",
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
                                                  "#businesscontest",
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


                                  ],
                                ),SizedBox(height: 10,),

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
                                                  "425 Enrolled",
                                                  style: TextStyle(fontSize: 15,color: Colors.purple),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),SizedBox(width: 10,),
                                      Text("Reg. closes on September 4, 12 pm",style: TextStyle(fontSize: 12,color: Colors.black45),)
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

