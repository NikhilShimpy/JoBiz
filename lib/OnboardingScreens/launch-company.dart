
import 'package:find_your_job/OnboardingScreens/PVTLTD.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:find_your_job/OnboardingScreens/Partnership.dart';



class LaunchCompany extends StatefulWidget {
  const LaunchCompany({super.key});

  @override
  State<LaunchCompany> createState() => _LaunchCompanyState();
}

class _LaunchCompanyState extends State<LaunchCompany> {
  late TextEditingController _companyNameController;
  bool _companyNameOccupied = false;

  @override
  void initState() {
    super.initState();
    _companyNameController = TextEditingController();
  }

  @override
  void dispose() {
    _companyNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text(
          'Launch Startup',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 15),
              const Text(
                "Please select right entity type",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 15),
              _buildOption(Icons.person, "Sole Proprietor"),
              const SizedBox(height: 15),
              _buildOption(Icons.people, "Partnership Firm"),
              const SizedBox(height: 15),
              _buildOption(Icons.person_outline, "One Person Company"),
              const SizedBox(height: 15),
              _buildOption(Icons.business, "Private Limited Company"),
              const SizedBox(height: 15),
              _buildOption(Icons.link, "Limited Liability Company"),
              const SizedBox(height: 15),
              _buildOption(Icons.account_balance, "Micro Finance Company"),
              const SizedBox(height: 15),
              const SizedBox(height: 30),
              const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Search a Unique \nCompany Name",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic),
                    textAlign: TextAlign.center,
                    softWrap: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _companyNameController,
                  decoration: const InputDecoration(
                    hintText: 'Enter company name',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  _searchGoogleForCompanyName(context);
                },
                child: const Text('Check Company Name'),
              ),
              _companyNameOccupied
                  ? const Padding(
                padding: EdgeInsets.all(0),
                child: Text(
                  '',
                  style: TextStyle(color: Colors.red),
                ),
              )
                  : const SizedBox(height: 20,),
              const Divider(
                color: Colors.black26,
                thickness: 1,
              ),
              const SizedBox(height: 20.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: ElevatedButton(
                      onPressed: () {

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(4, 2, 115, 0.8),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.black54),
                          borderRadius: BorderRadius.circular(26),
                        ),
                      ),
                      child: const Row(
                        children: [
                          Text(
                            'Free Consultation',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
              Container(child: const Text("I am ready to get started",style: TextStyle(color: Colors.blueAccent,fontSize: 15),),),
              const SizedBox(height: 20),

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOption(IconData icon, String text) {
    return InkWell(
      onTap: () {
        _navigateToScreen(text);
      },
      child: Container(
        width: 330,
        height: 52,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1.0, // Adjust the width of the border as needed
          ),
          borderRadius: BorderRadius.circular(26),
          color: Colors.white,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(icon),
                          iconSize: 30,
                          onPressed: () {},
                        ),
                        Text(
                          text,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _searchGoogleForCompanyName(BuildContext context) {
    String companyName = _companyNameController.text.trim();
    if (companyName.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => WebView(
            initialUrl: 'https://www.google.com/search?q=$companyName',
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (String url) {
              if (url.contains(companyName)) {
                setState(() {
                  _companyNameOccupied = true;
                });
              } else {
                setState(() {
                  _companyNameOccupied = false;
                });
              }
            },
          ),
        ),
      );
    }
  }

  void _navigateToScreen(String text) {
    switch (text) {
      case "Partnership Firm":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Partnership()),
        );
        break;
      case "Private Limited Company":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PvtLtdScreen()),
        );
        break;
    // Add cases for other options as needed
      default:
      // Default action
    }
  }
}

class LaunchCompanyApp extends StatelessWidget {
  const LaunchCompanyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: const LaunchCompany(),
    );
  }
}

void main() {
  runApp(const LaunchCompanyApp());
}













/*
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LaunchCompany extends StatefulWidget {
  const LaunchCompany({super.key});

  @override
  State<LaunchCompany> createState() => _LaunchCompanyState();
}

class _LaunchCompanyState extends State<LaunchCompany> {
  late TextEditingController _companyNameController;
  bool _companyNameOccupied = false;

  @override
  void initState() {
    super.initState();
    _companyNameController = TextEditingController();
  }

  @override
  void dispose() {
    _companyNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text(
          'Launch Startup',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 15),
              const Text(
                "Please select right entity type",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 15),
              _buildOption(Icons.person, "Sole Proprietor"), const SizedBox(height: 15),
              _buildOption(Icons.people, "Partnership Firm"), const SizedBox(height: 15),
              _buildOption(Icons.person_outline, "One Person Company"), const SizedBox(height: 15),
              _buildOption(Icons.business, "Private Limited Company"), const SizedBox(height: 15),
              _buildOption(Icons.link, "Limited Liability Company"), const SizedBox(height: 15),
              _buildOption(Icons.account_balance, "Micro Finance Company"), const SizedBox(height: 15),
              const SizedBox(height: 30),

              const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Search a Unique \nCompany Name",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),
                    textAlign: TextAlign.center,
                    softWrap: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _companyNameController,
                  decoration: const InputDecoration(
                    hintText: 'Enter company name',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  _searchGoogleForCompanyName(context);
                },
                child: const Text('Check Company Name'),
              ),
              _companyNameOccupied
                  ? const Padding(
                padding: EdgeInsets.all(0),
                child: Text(
                  '',
                  style: TextStyle(color: Colors.red),
                ),
              )
                  : const SizedBox(),
              const Divider(
                color: Colors.black26,
                thickness: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOption(IconData icon, String text) {
    return Container(
      width: 330,
      height: 52,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1.0, // Adjust the width of the border as needed
        ),
        borderRadius: BorderRadius.circular(26),
        color: Colors.white,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(icon),
                        iconSize: 30,
                        onPressed: () {},
                      ),
                      Text(
                        text,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _searchGoogleForCompanyName(BuildContext context) {
    String companyName = _companyNameController.text.trim();
    if (companyName.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => WebView(
            initialUrl: 'https://www.google.com/search?q=$companyName',
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (String url) {
              if (url.contains(companyName)) {
                setState(() {
                  _companyNameOccupied = true;
                });
              } else {
                setState(() {
                  _companyNameOccupied = false;
                });
              }
            },
          ),
        ),
      );
    }
  }


}

class LaunchCompanyApp extends StatelessWidget {
  const LaunchCompanyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LaunchCompany(),
    );
  }
}


 */