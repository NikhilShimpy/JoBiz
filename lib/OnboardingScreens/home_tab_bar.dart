import 'package:flutter/material.dart';

class BusinessTabBar extends StatefulWidget {
  const BusinessTabBar({super.key});

  @override
  State<BusinessTabBar> createState() => _BusinessTabBarState();
}

class _BusinessTabBarState extends State<BusinessTabBar> {
  String _selectedName = '';
  String _message = '';

  void _showMessage(String name) {
    setState(() {
      if (_selectedName == name) {
        _selectedName = '';
        _message = '';
      } else {
        _selectedName = name;
        switch (name) {
          case 'Easy business discovery':
            _message = 'Discover various business opportunities in your area effortlessly.';
            break;
          case 'Data-driven recommendations':
            _message = 'Get suggestions based on real-time data, like the number of existing shops and market demand.';
            break;
          case 'Increased success rate':
            _message = 'Increase your chances of success by choosing ';
            break;
          case 'Personalized suggestions':
            _message = 'Receive recommendations tailored to your interests, skills, and local market conditions.';
            break;
          case 'Real-time updates':
            _message = 'Stay up-to-date with the latest trends and changes in the local business landscape.';
            break;
          case 'Cost-effective decision making':
            _message = 'Make informed decisions about business investments by considering market conditions and demand.';
            break;

          default:
            _message = '';
            break;
        }
      }
    });
    print(_message);
  }  

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: <Widget>[
                for (var name in ['Easy business discovery', 'Data-driven recommendations', 'Increased success rate', 'Personalized suggestions', 'Real-time updates','Cost-effective decision making'])
                  Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.check),
                        title: Text(name,style: const TextStyle(color: Colors.white,fontSize: 18),),
                        onTap: () {
                          _showMessage(name);
                        },
                        trailing: const Icon(Icons.keyboard_arrow_down),
                      ),

                      const SizedBox(height: 5),
                      if (_selectedName == name)
                        Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: Text(
                            _message,
                            style: const TextStyle(fontSize: 16,color: Colors.white),
                            softWrap: true,
                          ),
                        ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}





class JobTabBar extends StatefulWidget {
  const JobTabBar({super.key});


  @override
  State<JobTabBar> createState() => _JobTabBarState();
}

class _JobTabBarState extends State<JobTabBar> {
  String _selectedNameJ = '';

  String _messageJ = '';

  void _showMessageJ(String nameJ) {
    setState(() {
      if (_selectedNameJ == nameJ) {
        _selectedNameJ = '';
        _messageJ = '';
      } else {
        _selectedNameJ = nameJ;
        switch (nameJ) {
          case 'Job listings':
            _messageJ = 'JoBiz has a large database of job listings that make it easier for job seekers to find relevant job openings';
            break;
          case 'Job alerts':
            _messageJ = 'Job seekers can install job signals on JoBiz to receive notifications when new job openings are published in their field';
            break;
          case 'Skill Assessment':
            _messageJ = 'JoBiz provides skill assessment tests to help you showcase your strengths and stand out from other candidates.';
            break;
          case 'Recruiter connection':
            _messageJ = 'JoBiz allows job seekers to connect directly to recruiters and hiring managers, which can make it easier to get noticed and get a job';
            break;
          case 'Paid services':
            _messageJ = "JoBiz paid services can help you move ahead in your career faster";
            break;
          case 'Premium membership':
            _messageJ = "A premium membership can increase your profile's visibility to employers and send you job offers via email and SMS" ;
            break;
          case 'Career Guidance':
            _messageJ = "JoBiz offers career guidance resources, including articles and expert advice, to help you make informed career decisions.";
            break;
           case 'Interview Preparation':
            _messageJ = "JoBiz offers interview preparation tips and resources to help you ace your job interviews.";
            break;
           case 'Company Reviews':
            _messageJ = "JoBiz offers interview preparation tips and resources to help you ace your job interviews.";
            break;



          default:
            _messageJ = '';
            break;
        }
      }
    });
    print(_messageJ);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
              children: [
                const SizedBox(height: 20),
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      for (var nameJ in ['Job listings', 'Job alerts','Skill Assessment', 'Recruiter connection', 'Paid services', 'Premium membership','Career Guidance','Interview Preparation','Company Reviews'])
                        Column(
                          children: [
                            ListTile(
                              leading: const Icon(Icons.check),
                              title: Text(nameJ,style: const TextStyle(color: Colors.white,fontSize: 18),),
                              onTap: () {
                                _showMessageJ(nameJ);
                              },
                              trailing: const Icon(Icons.keyboard_arrow_down),
                            ),

                            const SizedBox(height: 5),
                            if (_selectedNameJ == nameJ)
                              Padding(
                                padding: const EdgeInsets.only(left: 60),
                                child: Text(
                                  _messageJ,
                                  style: const TextStyle(fontSize: 16,color: Colors.white),
                                  softWrap: true,
                                ),
                              ),
                          ],
                        ),
                      const SizedBox(height: 15),
                      const Divider(
                        color: Colors.white24,
                        thickness: 1,
                      ),
                      const SizedBox(height: 20),

                      Column(
                        children: [
                          const Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 5,right: 5,bottom: 4),
                              child: Text("Other benefits of JoBiz include : ",
                                style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.white),
                                textAlign: TextAlign.center,
                                softWrap: true,
                              ),
                            ),
                          ),
                          const Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 20,right: 5,bottom: 8,top: 10),
                                  child: Text("•  Access to track job application",
                                    style: TextStyle(fontSize: 17,color: Colors.white),

                                    softWrap: true,
                                  ),
                                ),
                            ],
                          ),
                           const Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 20,right: 5,bottom: 8,top: 10),
                                  child: Text("•  Ability to apply multiple jobs ",
                                    style: TextStyle(fontSize: 17,color: Colors.white),

                                    softWrap: true,
                                  ),
                                ),
                            ],
                          ),
                           const Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 20,right: 5,bottom: 8,top: 10),
                                  child: Text("•  Ability to unadvertised jobs",
                                    style: TextStyle(fontSize: 17,color: Colors.white),

                                    softWrap: true,
                                  ),
                                ),
                            ],
                          ),
                           const Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 20,right: 5,bottom: 8,top: 10),
                                  child: Text("•  Ability to apply for jobs from your mobile",
                                    style: TextStyle(fontSize: 17,color: Colors.white),

                                    softWrap: true,
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          const Divider(
                            color: Colors.white24,
                            thickness: 1,
                          ),
                          const SizedBox(height: 15),

                          Container(
                            width: 320,
                            height: 330,
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black,

                                  // changes position of shadow
                                ),
                              ],
                              border: Border.all(
                                color: Colors.white70,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                              //border: Border.all(color: Colors.black), // Border for the inner container
                            ),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.all(1.0),
                                child: Column(
                                  children: [
                                    SizedBox(height: 15),
                                    Center(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 5,right: 5,bottom: 4),
                                        child: Text("JoBiz also offers the following benefits to employees",
                                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),
                                          textAlign: TextAlign.center,
                                          softWrap: true,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10,top: 10),
                                          child: Text("• Insurance ",
                                            style: TextStyle(fontSize: 17,color: Colors.white),
                                            softWrap: true,
                                          ),
                                        ),
                                      ],
                                    ),
                                   Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10,top: 10),
                                          child: Text("• Health and wellness",
                                            style: TextStyle(fontSize: 17,color: Colors.white),
                                            softWrap: true,
                                          ),
                                        ),
                                      ],
                                    ),
                                   Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10,top: 10),
                                          child: Text("• Unpaid extended leave",
                                            style: TextStyle(fontSize: 17,color: Colors.white),
                                            softWrap: true,
                                          ),
                                        ),
                                      ],
                                    ),
                                   Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10,top: 10),
                                          child: Text("• Work from home",
                                            style: TextStyle(fontSize: 17,color: Colors.white),
                                            softWrap: true,
                                          ),
                                        ),
                                      ],
                                    ),
                                   Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10,top: 10),
                                          child: Text("• Family and parenting",
                                            style: TextStyle(fontSize: 17,color: Colors.white),
                                            softWrap: true,
                                          ),
                                        ),
                                      ],
                                    ),
                                   Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10,top: 10),
                                          child: Text("• Office perks",
                                            style: TextStyle(fontSize: 17,color: Colors.white),
                                            softWrap: true,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10,top: 10),
                                          child: Text("• Professional support  and learning",
                                            style: TextStyle(fontSize: 17,color: Colors.white),
                                            softWrap: true,
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(width: 20,),
                    ],
                    
                  ),
                ),
              ],
            ),

    );
  }
}

