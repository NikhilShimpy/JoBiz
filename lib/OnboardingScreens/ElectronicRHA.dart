import 'package:flutter/material.dart';

class ElectronicRHA  extends StatefulWidget {
  const ElectronicRHA ({super.key});
  @override
  State<ElectronicRHA> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<ElectronicRHA> {
  final List<Map<String, dynamic>> allShop = [
    {
      "id": 1,
      "name": "Health Care Devices",
      "count": "0",
    },
    {
      "id": 2,
      "name": "Computer or Laptop Accessories",
      "count": "1",
      "items": ["Computer", "Laptop","Tablet"]
    },
    {
      "id": 3,
      "name": "Television",
      "count": "2",
    },
    {
      "id": 4,
      "name": "Home Appliances",
      "count": "2",
      "items": ["Air Condtioners\t\t\t ", "Refrigerators","Cooling Appliances","Washing Machine","Kitchen appliances","Water Purifier","Dry Irons"]
    },
    {
      "id": 5,
      "name": "Headphones & Speaker",
      "count": "6",
    },
    {
      "id": 6,
      "name": "Cases ,Covers & more",
      "count": "8",
    },
    {
      "id": 7,
      "name": "Mobile Accessories",
      "count": "9",
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

   

  bool isDropDownVisible = false;
  int selectedShopIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false ,
        backgroundColor: Colors.black12,
        title: const Text('Electronics',style: TextStyle(color: Color.fromRGBO(229, 9, 20, 0.5),fontWeight: FontWeight.w500,fontSize: 26),),
      ),


      body: SingleChildScrollView(
        child: Padding(
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
              ListView.builder(
                shrinkWrap: true,
                itemCount: foundShop.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    if (selectedShopIndex == index) {
                      setState(() {
                        isDropDownVisible = !isDropDownVisible;
                      });
                    } else {
                      setState(() {
                        isDropDownVisible = true;
                        selectedShopIndex = index;
                      });
                    }
                  },
                  child: Card(
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Text(
                            '${index + 1}', // Add 1 to start counting from 1 instead of 0
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          title: Text(
                            foundShop[index]['name'],
                            style: const TextStyle(fontSize: 18),
                          ),
                          trailing: Text(
                            '${foundShop[index]["count"]}',
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Visibility(
                          visible: isDropDownVisible && selectedShopIndex == index,
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: foundShop[index]["items"] != null
                                  ? foundShop[index]["items"]
                                  .map<Widget>(
                                      (item) => Padding(
                                padding: const EdgeInsets.only(left: 60),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Text(item,style: const TextStyle(fontSize: 17),)
                                    ),
                                  ],
                                ),
                              )
                              )
                                  .toList()
                                  : [], // Check if items list is not null
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              /*
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

               */
            ],
          ),
        ),
      ),
    );
  }
}
