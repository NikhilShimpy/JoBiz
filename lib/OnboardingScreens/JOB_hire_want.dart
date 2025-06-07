import 'package:find_your_job/OnboardingScreens/JobScreen.dart';
import 'package:find_your_job/OnboardingScreens/addJobCard.dart';
import 'package:flutter/material.dart';

class JobHireWant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JoBiz',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 28),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JobScreen()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Container(
                  width: screenWidth - 40,
                  height: 250,// Adjusted width
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 25),
                            child: Text(
                              'I want a \nJob',
                              style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 40, // Adjust size as needed
                              height: 40, // Adjust size as needed
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                  size: 25,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15,top: 15),
                            child: Text("Applied and get a job",style: TextStyle(fontSize: 18),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddJobPage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: screenWidth - 40,
                  height: 255,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 15,top: 20),
                              child: Text(
                                'I want to \nHire',
                                style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold),
                              ),
                            ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 40, // Adjust size as needed
                              height: 40, // Adjust size as needed
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                  size: 25,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15,top: 15),
                            child: Text("Post a New Job",style: TextStyle(fontSize: 18),),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 35),
            
            Center(child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Text("8L+ top companies trust\nJoBiz",
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            )),
            SizedBox(height: 30),

            Container(
              width: 330,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black45,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(10),
                color: Colors.black12,
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Center(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 25,top: 15),
                                          child: Icon(Icons.group_add,color: Color.fromRGBO(50, 74, 178, 0.3)
                                            ,size: 40,),
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(left: 25,right: 105,top: 10),
                                                      child: Text("1Cr+",
                                                        style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Color.fromRGBO(50, 74, 178, 1)),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 25,right: 5),
                                                  child: Text("Qualified Candidates",
                                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color.fromRGBO(50, 74, 178, 0.5)),
                                                    textAlign: TextAlign.center,
                                                    softWrap: true,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),

            Container(
              width: 330,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black45,
                  width: 0.5,

                ),
                borderRadius: BorderRadius.circular(10),
                color: Colors.black12,
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Center(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 25,top: 15),
                                          child: Icon(Icons.add_ic_call_outlined,color: Color.fromRGBO(50, 74, 178, 0.3)
                                            ,size: 40,),
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(left: 25,right: 105,top: 10),
                                                      child: Text("25L+",
                                                        style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Color.fromRGBO(50, 74, 178, 1)),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 25,right: 5),
                                                  child: Text("Interviews per month",
                                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color.fromRGBO(50, 74, 178, 0.5)),
                                                    textAlign: TextAlign.center,
                                                    softWrap: true,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),

            Container(
              width: 330,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black45,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(10),
                color: Colors.black12,
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Center(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 25,top: 15),
                                          child: Icon(Icons.outlined_flag_rounded,color: Color.fromRGBO(50, 74, 178, 0.3)
                                            ,size: 40,),
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(left: 25,right: 105,top: 10),
                                                      child: Text("520+",
                                                        style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Color.fromRGBO(50, 74, 178, 1)),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 25,right: 55),
                                                  child: Text("Cities in India",
                                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color.fromRGBO(50, 74, 178, 0.5)),
                                                    textAlign: TextAlign.center,
                                                    softWrap: true,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),

          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: JobHireWant(),
  ));
}
