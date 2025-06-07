import 'package:flutter/material.dart';

class Partnership extends StatefulWidget {
  const Partnership({super.key});

  @override
  State<Partnership> createState() => _PartnershipState();
}

class _PartnershipState extends State<Partnership> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text('Partnership Firm',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Text("hh"),

          ],
        ),
      ),
    );
  }
}