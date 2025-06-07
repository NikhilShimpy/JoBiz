
import 'package:find_your_job/OnboardingScreens/Home.dart';
import 'package:find_your_job/OnboardingScreens/PVT_LTD_Thank.dart';
import 'package:flutter/material.dart';

class PvtLtdScreen extends StatefulWidget {
  const PvtLtdScreen({super.key});

  @override
  State<PvtLtdScreen> createState() => _PvtLtdScreenState();
}

class _PvtLtdScreenState extends State<PvtLtdScreen> {

  String _selectedStateI = '';
  final List<String> _states = [
    '','Andhra Pradesh', 'Arunachal Pradesh', 'Assam', 'Bihar', 'Chhattisgarh',
    'Goa', 'Gujarat', 'Haryana', 'Himachal Pradesh', 'Jharkhand', 'Karnataka',
    'Kerala', 'Madhya Pradesh', 'Maharashtra', 'Manipur', 'Meghalaya', 'Mizoram',
    'Nagaland', 'Odisha', 'Punjab', 'Rajasthan', 'Sikkim', 'Tamil Nadu', 'Telangana',
    'Tripura', 'Uttar Pradesh', 'Uttarakhand', 'West Bengal', 'Andaman and Nicobar Islands',
    'Chandigarh', 'Dadra and Nagar Haveli and Daman and Diu', 'Delhi', 'Lakshadweep', 'Puducherry'
  ];


  final String _selectedState = '';
  String _businessActivity = '';
  final String _amount = '';
  String _ownerDetail = '';
  String _ownershipPercentage = '';
  String _email = '';
  String _phone = '';
  String _name = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text('Pvt Ltd',style: TextStyle(fontWeight: FontWeight.bold),),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
              // Navigate to the home page or any other page
              // For example, Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              const SizedBox(
                height: 67,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18,vertical: 20),
                  child: Text("Private Limited Company Registration",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15,right: 15),
                child: Text("Get your Private Limited Company Registration in just 10 days with minimum cost only. Fill following form to start/launch PVT LTD.",style: TextStyle(color: Colors.black,fontSize: 20),
                  textAlign: TextAlign.justify,),
              ),
              const SizedBox(height: 20),

              Container(
                width: 330,

                decoration: BoxDecoration(

                  border: Border.all(
                    color: Colors.black,
                    width: 1.0, // Adjust the width of the border as needed
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  //color: Color.fromRGBO(229, 216, 171, 0.5),// Adjust the radius as needed
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10,left: 8),
                            child: Text('Select State of India:',style: TextStyle(fontSize: 20),),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: SizedBox(
                          height: 50,
                          child: DropdownButton<String>(
                            isExpanded: true,
                            value: _selectedStateI,
                            onChanged: (String? newValue) {
                              setState(() {
                                _selectedStateI = newValue!;
                              });
                            },
                            items: _states.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),



                      const SizedBox(height: 16.0),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              'Business Activity:',
                              style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),

                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black45,
                            width: 1.0, // Adjust the width of the border as needed
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          //color: Color.fromRGBO(229, 216, 171, 0.5),// Adjust the radius as needed
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                              alignLabelWithHint: true,
                            hintText: "          Describe Business Activity\n\t\t\t\t\t\t\t\t\t\t\t\t\t         in few words"
                          ),
                          onChanged: (value) {
                            _businessActivity = value;
                          },
                          minLines: 3, // Minimum number of lines
                          maxLines: null,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10,left: 8),
                            child: Text(
                              'Share Capital:',
                              style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),const SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black45,
                            width: 1.0, // Adjust the width of the border as needed
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          //color: Color.fromRGBO(229, 216, 171, 0.5),// Adjust the radius as needed
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              alignLabelWithHint: true,
                              hintText: "   Amount in INR"
                          ),
                          onChanged: (value) {
                            _businessActivity = value;
                          },
                           // Minimum number of lines
                          maxLines: null,
                        ),
                      ),
                      const SizedBox(height: 16.0),

                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10,left: 8),
                            child: Text(
                              'Owner Detail:',
                              style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),const SizedBox(height: 10),

                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black45,
                            width: 1.0, // Adjust the width of the border as needed
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          //color: Color.fromRGBO(229, 216, 171, 0.5),// Adjust the radius as needed
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            alignLabelWithHint: true,
                              hintText: "   Owners detail"
                          ),
                          onChanged: (value) {
                            _ownerDetail = value;
                          },
                          // Minimum number of lines
                          maxLines: null,
                        ),
                      ),
                      const SizedBox(height: .0),

                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10,left: 8),
                            child: Text(
                              'Ownership in Percentage :',
                              style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),const SizedBox(height: 10),

                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black45,
                            width: 1.0, // Adjust the width of the border as needed
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          //color: Color.fromRGBO(229, 216, 171, 0.5),// Adjust the radius as needed
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            alignLabelWithHint: true,
                              hintText: "   Ownership in %"
                          ),
                          onChanged: (value) {
                            _ownershipPercentage = value;
                          },
                          // Minimum number of lines
                          maxLines: null,
                        ),
                      ),
                      const SizedBox(height: 40.0),

                      const Divider(
                        color: Colors.black26,
                        thickness: 1,
                      ),const SizedBox(height: 15.0),


                          const Padding(
                            padding: EdgeInsets.only(top: 10,left: 8),
                            child: Text(
                              'Personal Details ',
                              style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,),
                            ),
                          ),
                        const SizedBox(height: 10),

                      const SizedBox(height: 10),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black45,
                            width: 1.0, // Adjust the width of the border as needed
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          //color: Color.fromRGBO(229, 216, 171, 0.5),// Adjust the radius as needed
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            alignLabelWithHint: true,
                            hintText: "   Name"                          ),
                          onChanged: (value) {
                            _name = value;
                          },
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black45,
                            width: 1.0, // Adjust the width of the border as needed
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          //color: Color.fromRGBO(229, 216, 171, 0.5),// Adjust the radius as needed
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              alignLabelWithHint: true,
                              hintText: "   Email"                          ),
                          onChanged: (value) {
                            _email = value;
                          },
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black45,
                            width: 1.0, // Adjust the width of the border as needed
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          //color: Color.fromRGBO(229, 216, 171, 0.5),// Adjust the radius as needed
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              alignLabelWithHint: true,
                              hintText: "   Mobile No"                          ),
                          onChanged: (value) {
                            _phone = value;
                          },
                        ),
                      ),
                      const SizedBox(height: 20.0),

                      ElevatedButton(
                        onPressed: () {
                          // Handle form submission
                          print('State: $_selectedStateI');
                          print('Business Activity: $_businessActivity');
                          print('Amount: $_amount');
                          print('Owner Detail: $_ownerDetail');
                          print('Ownership Percentage: $_ownershipPercentage');
                          print('Name: $_name');
                          print('Email: $_email');
                          print('Phone: $_phone');

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ThankYouPage()),
                          );
                        },
                        child: const Text('Submit'),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),

            ],
          ),

      ),
    );
  }
}






/*
import 'package:flutter/material.dart';

class PvtLtdScreen extends StatefulWidget {
  @override
  State<PvtLtdScreen> createState() => _PvtLtdScreenState();
}

class _PvtLtdScreenState extends State<PvtLtdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('Pvt Ltd',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 67,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 20),
                child: Text("Private Limited Company Registration",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Text("Get your Private Limited Company Registration in just 10 days with minimum cost only. Fill following form to start/launch PVT LTD.",style: TextStyle(color: Colors.black,fontSize: 20),
                textAlign: TextAlign.justify,),
            )

          ],
        ),
      ),
    );
  }
}

 */