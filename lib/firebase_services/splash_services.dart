import 'dart:async';
import 'package:find_your_job/OnboardingScreens/Home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:find_your_job/OnboardingScreens/login.dart';
import 'package:flutter/material.dart';
//import 'dart:js';


class SplashServices
{
  void isLogin(BuildContext context){

    //FirebaseAuth auth = FirebaseAuth.instance;
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser ;
    if(user != null){
      Timer(const Duration(seconds: 3),
              () => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen())
          )
      );
    }else {
      Timer(const Duration(seconds: 3),
              () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MyLogin())
          )
      );
    }

  }
}