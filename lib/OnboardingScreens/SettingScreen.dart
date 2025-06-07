import 'package:find_your_job/OnboardingScreens/HelpScreen.dart';
import 'package:find_your_job/OnboardingScreens/MyProfileScreen.dart';
import 'package:find_your_job/OnboardingScreens/PrivacyScreen.dart';
import 'package:find_your_job/OnboardingScreens/login.dart';
import 'package:find_your_job/OnboardingScreens/sign_up.dart';
import 'package:find_your_job/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Settings',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 31),),
        automaticallyImplyLeading: false, //for arrow in appBar here we don't need
      ),
     backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.only(top:20,left: 5,),
        child: ListView.separated(

          itemCount: 5,
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              height: 50,
              color: Colors.grey,
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: _getSettingAvatar(index),
              title: Text(_getSettingTitle(index),style: const TextStyle(color: Colors.white,fontSize: 28),),
              onTap: () {
                _handleSettingTap(context,index);
                // Handle onTap for each setting
              },
            );
          },
        ),
      ),
    );
  }

  String _getSettingTitle(int index) {
    switch (index) {
      case 0:
        return 'My Profile';
      case 1:
        return 'Privacy';
      case 2:
        return 'Add Account';
      case 3:
        return 'Help';
      case 4:
        return 'Log Out';
      default:
        return '';
    }
  }

  Widget _getSettingAvatar(int index) {
    switch (index) {
      case 0:
        return const CircleAvatar(
          radius: 30,
          child: Icon(Icons.person),
        );
      case 1:
        return const CircleAvatar(
          radius: 30,
          child: Icon(Icons.lock),
        );
      case 2:
        return const CircleAvatar(
          radius: 30,
          child: Icon(Icons.person_add_alt),
        );
      case 3:
        return const CircleAvatar(
          radius: 30,
          child: Icon(Icons.help),
        );
      case 4:
        return const CircleAvatar(
          radius: 30,
          child: Icon(Icons.logout),
        );

      default:
        return const CircleAvatar();
    }
  }

  void _handleSettingTap(BuildContext context, int index) {
    switch (index) {
     case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyProfileScreen()),
        );
        break;
     case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PrivacyScreen()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MyRegister()),
        );


      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HelpScreen()),
        );
      case 4:
       auth.signOut().then((value) {
         Navigator.push(
           context,
           MaterialPageRoute(builder: (context) => const MyLogin()),
         );
       }).onError((error, stackTrace) {
         Utils().toastMessage(error.toString());
       });

        break;
      default:
        break;
    }
  }
}
