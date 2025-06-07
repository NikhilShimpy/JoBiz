import 'package:flutter/material.dart';

class ResturantCafeRHA  extends StatefulWidget {
  const ResturantCafeRHA ({super.key});
  @override
  State<ResturantCafeRHA> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<ResturantCafeRHA> {
  final List<Map<String, dynamic>> allShop = [
    {
      "id": 1,
      "name": "Family Resturant",
      "count": "1",
    },
    {
      "id": 2,
      "name": "Cafe",
      "count": "2",
    },
    {
      "id": 3,
      "name": "Bhojnalay",
      "count": "3",
    },
    {
      "id": 4,
      "name": "Student Mess",
      "count": "9",
    },
    /*
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
     */
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
        title: const Text('Resturant & Cafe',style: TextStyle(color: Color.fromRGBO(229, 9, 20, 0.5),fontWeight: FontWeight.w500,fontSize: 26),),
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
                hintText: "Search Categories",
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
                    //subtitle: Text('subtitle'),
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
