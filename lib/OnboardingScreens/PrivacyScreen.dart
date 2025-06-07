import 'package:find_your_job/OnboardingScreens/forgotpassword.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text('Privacy and Security ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 28),),
      ),

      backgroundColor: const Color.fromRGBO(25, 43, 51, 0.5),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.only(top:20,left: 10,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('\nLogin & Recovery',style: TextStyle(color: Colors.white,fontSize: 22),),
                const Text('Manage your passwords,login preferences and recovery methods.',style: TextStyle(color: Colors.white54,fontSize: 15),),

                Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Text("\t Change password ",style: TextStyle(fontSize: 17,color: Colors.white),),
                        trailing: const Text(">",style: TextStyle(fontSize: 17,color: Colors.white),),
                        onTap: () {
                          Get.to(()=>  const ForgotPasswordPage());
                        }
                      ),
                      ListTile(
                          leading: const Text("\t Two-factor authentication",style: TextStyle(fontSize: 17,color: Colors.white),),
                          trailing: const Text(">",style: TextStyle(fontSize: 17,color: Colors.white),),
                          onTap: () {
                            //navigation here
                          }
                      ),
                    ],
                  ),
                ),
                const Text('\nSecurity Checks',style: TextStyle(color: Colors.white,fontSize: 22),),
                const Text('Review security issue by running checks across apps,device and emails sent.',style: TextStyle(color: Colors.white54,fontSize: 15),),
                Container(
                  child: Column(
                    children: [
                      ListTile(
                          leading: const Text("\t Recent emails",style: TextStyle(fontSize: 17,color: Colors.white),),
                          trailing: const Text(">",style: TextStyle(fontSize: 17,color: Colors.white),),
                          onTap: () {
                            //navigation here
                          }
                      ),
                      ListTile(
                          leading: const Text("\t Security Checkup",style: TextStyle(fontSize: 17,color: Colors.white),),
                          trailing: const Text(">",style: TextStyle(fontSize: 17,color: Colors.white),),
                          onTap: () {
                            //navigation here
                          }
                      ),
                    ],
                  ),
                ),

              ],

            ),


        ),
      ),
    );
  }
}
