import 'package:flutter/material.dart';

class ClothesRHA extends StatefulWidget {
  const ClothesRHA({super.key});
  @override
  State<ClothesRHA> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<ClothesRHA> {
  final List<Map<String, dynamic>> allShop = [
    {
      "id": 1,
      "name": "Sports Shop",
      "count": "0",
    },
    {
      "id": 2,
      "name": "Mens Wear",
      "count": "3",
    },
    {
      "id": 3,
      "name": "Kids Wear",
      "count": "5",
    },
    {
      "id": 4,
      "name": "Womens Wear",
      "count": "8",
      "items": ["Women Undergarments", "Bra", "Saree"]
    },
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> foundShop = [];

  @override
  void initState() {
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
      results = allShop
          .where((user) =>
          user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black12,
        title: const Text(
          'Analysis for Clothes',
          style: TextStyle(
            color: Color.fromRGBO(229, 9, 20, 0.5),
            fontWeight: FontWeight.w500,
            fontSize: 26,
          ),
        ),
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
                    Text(
                      "S.No.",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ), // Serial Number
                    SizedBox(width: 8.0), // Space between serial number and name
                    Expanded(
                      child: Text(
                        "Name of Shop",
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ), // Name
                    ),
                    SizedBox(width: 8.0), // Space between name and marks
                    Text(
                      "No. of Shop",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ), // Marks
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
                                  .map<Widget>((item) => Padding(
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

            ],
          ),
        ),
      ),
    );
  }
}