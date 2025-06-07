import 'package:find_your_job/OnboardingScreens/ClothesRHA.dart';
import 'package:find_your_job/OnboardingScreens/ElectronicRHA.dart';
import 'package:find_your_job/OnboardingScreens/ReasturantCafeRHA.dart';
import 'package:flutter/material.dart';

class RanjeetAnalysis extends StatefulWidget {
  const RanjeetAnalysis({super.key});

  @override
  State<RanjeetAnalysis> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<RanjeetAnalysis> {
  final List<Map<String, dynamic>> allShop = [
    {
      "id": 1,
      "name": "Hardware Shop",
      "count": "2",
    },
    {
      "id": 2,
      "name": "Play School",
      "count": "3",
    },
    {
      "id": 3,
      "name": "Medical Shop",
      "count": "6",
    },
    {
      "id": 4,
      "name": "Electrical Shop",
      "count": "7",
    },
    {
      "id": 5,
      "name": "Electronic Shop",
      "count": "8",
    },
    {
      "id": 6,
      "name": "General Store",
      "count": "10",
    },
    {
      "id": 7,
      "name": "Resturant & Cafe",
      "count": "15",
    },
    {
      "id": 8,
      "name": "Clothes",
      "count": "16",
    },
    {
      "id": 9,
      "name": "Furniture Shop",
      "count": "16",
    },
    {
      "id": 10,
      "name": "Glocery",
      "count": "19",
    },
    {
      "id": 11,
      "name": "MP Online",
      "count": "23",
    },
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> foundShop = [];
  @override
  initState() {
    // at the beginning, all users are shown
    foundShop = allShop;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = allShop;
    } else {
      results = allShop.where((user) => user["name"].toLowerCase().contains(enteredKeyword.toLowerCase())).toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      foundShop = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black12,
        title: const Text(
          'Analysis for Ranjeet Hanuman',
          style: TextStyle(
            color: Color.fromRGBO(229, 9, 20, 0.5),
            fontWeight: FontWeight.w500,
            fontSize: 26,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                hintText: "Search Shop",
                suffixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Row(
                children: [
                  Text("S.No.", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),), // Serial Number
                  SizedBox(width: 8.0), // Space between serial number and name
                  Expanded(
                    child: Text("Name of Shop", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),), // Name
                  ),
                  SizedBox(width: 8.0), // Space between name and marks
                  Text("No. of Shop", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),), // Marks
                ],
              ),
            ),
            Expanded(
              child: foundShop.isNotEmpty
                  ? ListView.builder(
                itemCount: foundShop.length,
                itemBuilder: (context, index) => Card(
                  elevation: 3,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    onTap: () {
                      switch (foundShop[index]['name']) {
                        case 'Clothes':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ClothesRHA(),
                            ),
                          );
                          break;
                        case 'Resturant & Cafe':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ResturantCafeRHA(),
                            ),
                          );
                        case 'Electronic Shop':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ElectronicRHA(),
                            ),
                          );
                          break;
                        default:
                        // Handle other shop types
                          break;
                      }
                    },
                    leading: Text(
                      '${index + 1}', // Add 1 to start counting from 1 instead of 0
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    title: Text(foundShop[index]['name'], style: const TextStyle(fontSize: 18,),),
                    trailing: Text('${foundShop[index]["count"]}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  ),
                ),
              )
                  : const Text(
                'No results found Please try with different search',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: RanjeetAnalysis(),
  ));
}




/*
import 'package:find_your_job/OnboardingScreens/ClothesRHA.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class RanjeetAnalysis  extends StatefulWidget {
  const RanjeetAnalysis ({Key? key}) : super(key: key);
  @override
  State<RanjeetAnalysis > createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<RanjeetAnalysis> {
  final List<Map<String, dynamic>> allShop = [
    {
      "id": 1,
      "name": "MP Online",
      "count": "25",
    },
    {
      "id": 2,
      "name": "Clothes",
      "count": "16",
    },
    {
      "id": 3,
      "name": "Resturant & Cafe",
      "count": "22",
       },
    {
      "id": 4,
      "name": "Hardware Shop",
      "count": "2",
       },
    {
      "id": 5,
      "name": "Glocery",
      "count": "19",
      },
    {
      "id": 6,
      "name": "Play School",
      "count": "3",
      },
    {
      "id": 7,
      "name": "Furniture Shop",
      "count": "16",
      },
    {
      "id": 8,
      "name": "Electronic Shop",
      "count": "12",
      },
    {
      "id": 9,
      "name": "Electrical Shop",
      "count": "9",
      },
    {
      "id": 10,
      "name": "General Store",
      "count": "13",
      },
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> foundShop = [];
  @override
  initState() {
    // at the beginning, all users are shown
    foundShop = allShop;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = allShop;
    } else {
      results = allShop.where((user) => user["name"].toLowerCase().contains(enteredKeyword.toLowerCase())).toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      foundShop = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      automaticallyImplyLeading: false ,
      backgroundColor: Colors.black12,
      title: const Text('Analysis for Ranjeet Hanuman',style: TextStyle(color: Color.fromRGBO(229, 9, 20, 0.5),fontWeight: FontWeight.w500,fontSize: 26),),
    ),


      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                hintText: "Search Shop",
                suffixIcon: const Icon(Icons.search),
                // prefix: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("S.No.",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),), // Serial Number
                  SizedBox(width: 8.0), // Space between serial number and name
                  Expanded(
                    child: Text("Name of Shop",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),), // Name
                  ),
                  SizedBox(width: 8.0), // Space between name and marks
                  Text("No. of Shop",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),), // Marks
                ],
              ),
            ),

            Expanded(
              child: foundShop.isNotEmpty
                  ? ListView.builder(
                itemCount: foundShop.length,
                itemBuilder: (context, index) => Card(
                  elevation: 3,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    leading:  Text(
                      '${index + 1}', // Add 1 to start counting from 1 instead of 0
                      style: TextStyle(

                        fontSize: 18,
                      ),
                    ),


                    title: Text(foundShop[index]['name'],style: TextStyle(fontSize: 18,),),
                    //subtitle: Text('subtitle'),
                    trailing: Text('${foundShop[index]["count"]}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                   ),
                  ),
                 )
                  : const Text(
                'No results found Please try with diffrent search',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

*/