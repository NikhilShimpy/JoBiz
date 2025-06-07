
import 'package:find_your_job/OnboardingScreens/BusinessScreen.dart';
import 'package:find_your_job/OnboardingScreens/HelpScreen.dart';
import 'package:find_your_job/OnboardingScreens/JOB_hire_want.dart';
import 'package:find_your_job/OnboardingScreens/JobScreen.dart';
import 'package:find_your_job/OnboardingScreens/SettingScreen.dart';
import 'package:find_your_job/OnboardingScreens/aboutUs.dart';
import 'package:find_your_job/OnboardingScreens/home_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/home_animation.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized
        setState(() {});
        // Play the video on a loop
        _controller.setLooping(true);
        _controller.play();
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false ,
        backgroundColor: Colors.black12,
        title: const Text('JoBiz',style: TextStyle(color: Color.fromRGBO(229, 9, 20, 0.5),fontWeight: FontWeight.w900,fontSize: 28,),),
        actions: [
          PopupMenuButton(
            iconColor: Colors.white,
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

                // Navigate to help page
              }
            },
          ),
        ],


      ),
      backgroundColor: Colors.black,

      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const BusinessScreen()),);
                      // Navigate to Business screen
                    },
                    child: const Text('Business'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => JobHireWant()),);
                      // Navigate to Job screen
                    },
                    child: const Text('Job'),
                  ),
                ),
              ],
            ),

            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text("Welcome to JoBiz",
                  style: TextStyle(color: Colors.white,fontSize: 30)),
            ),
            const Padding(
              padding: EdgeInsets.all(12),
              child: Text("Our app helps you discover exciting job opportunities "
                  "and profitable businesses near your location. "
                  "Whether you're looking for a new job or seeking to start a business,"
                  " our app provides you with the information you need to make informed decisions."
                  " Explore job listings, business opportunities, and more, all tailored to your"
                  " location and preferences. Start your journey to success "
                  "with JoBiz today.",style: TextStyle(color: Colors.white,fontSize: 20),
                textAlign: TextAlign.justify,),
            ),
            const SizedBox(height: 20,),

            const Padding(
              padding: EdgeInsets.only(left: 0),
              child: Text("Are you tried of searching \nfor business or job ?",
                style: TextStyle(fontSize: 28,color: Colors.white,fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 20,),

            SizedBox(
              width: 320,
              child: _controller.value.isInitialized
                    ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
                    : Container(),

            ),
            const SizedBox(height: 20,),

            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text("Don't worry, JoBiz is here for you....\nJoBiz will help you in deciding which business to open and help you in finding a job in a city.",
                style: TextStyle(fontSize: 20,color: Colors.white),
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            ),
            const Divider(
              color: Colors.white24,
              thickness: 1,
            ),
            const SizedBox(height: 10,),


            const Column(
              children: [
                SizedBox(
                  width: 500,
                  height: 440,
                  child: DefaultTabController(
                    length: 2,
                    child: Column(
                      children: [
                        TabBar(
                          labelColor: Colors.white,
                          tabs: [
                            Tab(text: 'Business'),
                            Tab(text: 'Job'),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              BusinessTabBar(),
                              JobTabBar(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Divider(
              color: Colors.white24,
              thickness: 1,
            ),




          ],
        ),

      ),

    );
  }
}







