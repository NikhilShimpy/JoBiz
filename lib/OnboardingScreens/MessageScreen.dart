import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black12,
        title: const Text('Messages',style: TextStyle(
          color: Color.fromRGBO(229, 9, 20, 0.5),
          fontWeight: FontWeight.w500,
          fontSize: 26,
        ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
               const Padding(
                padding: EdgeInsets.only(top: 15,left: 8,right: 8,bottom: 8),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search by company or user name...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                    
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: SizedBox(
                  width: 200, // set the width as needed
                  height: 140, // set the height as needed
                  child: Image.asset('assets/image/messageImage.jpg'),
                ),
            ),
            const Text(
                  'Welcome to Messages',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
            const Padding(
              padding: EdgeInsets.only(top: 6),
              child: Text("When an employer contact you,\n you will see message here.",style: TextStyle(fontSize: 18,),textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}