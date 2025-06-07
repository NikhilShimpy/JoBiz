import 'package:flutter/material.dart';

class GumastaNagarAnalysis extends StatefulWidget {
  const GumastaNagarAnalysis ({super.key});

  @override
  State<GumastaNagarAnalysis> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<GumastaNagarAnalysis> {
  final List<Map<String, dynamic>> allShop = [
    {
      "id": 1,
      "name": "Hardware Shop",
      "count": "1",
    },
    {
      "id": 2,
      "name": "Play School",
      "count": "2",
    },
    {
      "id": 4,
      "name": "Electrical Shop",
      "count": "3",
    },

    {
      "id": 5,
      "name": "MP Online",
      "count": "4",
    },
    {
      "id": 6,
      "name": "General Store",
      "count": "7",
    },
    {
      "id": 7,
      "name": "Electronic Shop",
      "count": "7",
    },
    {
      "id": 8,
      "name": "Furniture Shop",
      "count": "8",
    },

    {
      "id": 9,
      "name": "Clothes",
      "count": "9",
    },
    {
      "id": 10,
      "name": "Glocery",
      "count": "13",
    },
    {
      "id": 11,
      "name": "Resturant & Cafe",
      "count": "19",
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
        title: const Text('Analysis for Gumasta Nagar',style: TextStyle(color: Color.fromRGBO(229, 9, 20, 0.5),fontWeight: FontWeight.w500,fontSize: 26),),
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
              padding: const EdgeInsets.all(8.0),
              child: const Row(
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
                      style: const TextStyle(

                        fontSize: 18,
                      ),
                    ),


                    title: Text(foundShop[index]['name'],style: const TextStyle(fontSize: 18,),),
                    //subtitle: Text('${foundShop[index]["des"]}'),
                    trailing: Text('${foundShop[index]["count"]}',style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
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
