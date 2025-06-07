import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text('Help',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 28),),
      ),
      backgroundColor: const Color.fromRGBO(25, 43, 51, 0.5),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.only(top:20,left: 10,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               ListTile(
                 leading:  const Text('\nHelp Center',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,),),
                   trailing: const Text(">",style: TextStyle(fontSize: 17,color: Colors.white),),
                   onTap: () {
                     //navigation here
                   }
               ),
                ListTile(
                    leading:  const Text('\nReport a problem',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,),),
                    trailing: const Text(">",style: TextStyle(fontSize: 17,color: Colors.white),),
                    onTap: () {
                      //navigation here
                    }
                ),
                ListTile(
                    leading:  const Text('\nAsk For Call',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,),),
                    trailing: const Text(">",style: TextStyle(fontSize: 17,color: Colors.white),),
                    onTap: () {
                      //navigation here
                    }
                ),
                ListTile(
                    leading:  const Text('\nPrivacy and Security Help',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,),),
                    trailing: const Text(">",style: TextStyle(fontSize: 17,color: Colors.white),),
                    onTap: () {
                      //navigation here
                    }
                ),


              ],
            )),


      ),
    );
  }
}
