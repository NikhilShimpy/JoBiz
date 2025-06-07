

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:find_your_job/OnboardingScreens/MyProfileScreen.dart';
import 'package:find_your_job/OnboardingScreens/SoftwareDeveloperIndore.dart';
import 'package:find_your_job/OnboardingScreens/addJobCard.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class GumastaNagar extends StatefulWidget {
  const GumastaNagar({super.key});

  @override
  State<GumastaNagar> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<GumastaNagar> {
  final TextEditingController _searchController = TextEditingController();
  late String _searchText;

  @override
  void initState() {
    super.initState();
    _searchText = '';
  }

  void _searchJobs() {
    setState(() {
      _searchText = _searchController.text.toLowerCase();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black12,
        title: const Text(
          'Jobs in Gumasta Nagar',
          style: TextStyle(
            color: Color.fromRGBO(229, 9, 20, 0.5),
            fontWeight: FontWeight.w500,
            fontSize: 26,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyProfileScreen()),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.person, size: 35),
            ),
          ),
        ],
      ),
      body: StreamBuilder<List<QuerySnapshot<Object?>>?>(
        stream: FirebaseFirestore.instance.collection('GumastaNagarjobCard').snapshots().map((querySnapshot) => [querySnapshot]),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final List<QueryDocumentSnapshot<Object?>> allJobCards = [];
          for (var querySnapshot in snapshot.data!) {
            for (var doc in querySnapshot.docs) {
              allJobCards.add(doc);
            }
          }

          final filteredJobCards = allJobCards.where((doc) {
            final data = doc.data() as Map<String, dynamic>;
            return data['jobTitle'].toLowerCase().contains(_searchText) ||
                data['companyName'].toLowerCase().contains(_searchText) ||
                data['shift'].toLowerCase().contains(_searchText) ||
                data['employmentType'].toLowerCase().contains(_searchText) ||
                data['address'].toLowerCase().contains(_searchText) ||
                data['salaryRange'].toLowerCase().contains(_searchText);
          }).toList();

          return Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          controller: _searchController,
                          decoration: const InputDecoration(
                            hintText: 'Search by job name, company or keywords',
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(),
                          ),
                          onSubmitted: (_) => _searchJobs(),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Jobs in Gumasta Nagar,Madhya Pradesh\n23 jobs',
                          style: TextStyle(fontSize: 13, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: filteredJobCards.length,
                      itemBuilder: (context, index) {
                        final jobCard = filteredJobCards[index].data() as Map<String, dynamic>;
                        return _JobCard(
                          jobTitle: jobCard['jobTitle'],
                          companyName: jobCard['companyName'],
                          address: jobCard['address'],
                          salaryRange: jobCard['salaryRange'],
                          employmentType: jobCard['employmentType'],
                          shift: jobCard['shift'],
                        );
                      },
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AddJobPage()),
                    );
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                    ),
                    child: const Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Icon(
                            Icons.message,
                            color: Colors.black,
                            size: 35,
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),

    );
  }
}

class _JobCard extends StatelessWidget {
  final String jobTitle;
  final String companyName;
  final String address;
  final String salaryRange;
  final String employmentType;
  final String shift;

  const _JobCard({
    required this.jobTitle,
    required this.companyName,
    required this.address,
    required this.salaryRange,
    required this.employmentType,
    required this.shift,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (jobTitle.toLowerCase()) {
          case 'software developer':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SoftwareDeveloperIndore()),
            );
            break;
        // Add more cases for other job titles if needed
          default:
          // Navigate to a default page
            break;
        }
      },
      child: Column(
        children: [
          Card(
            elevation: 4,
            color: Colors.white,
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(jobTitle, style: const TextStyle(fontSize: 22)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 9),
                    child: Text(
                      companyName,
                      style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    address,
                    style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        constraints: const BoxConstraints(
                          minWidth: 0.0,
                          maxWidth: 300,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(169, 169, 169, 0.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4, right: 4),
                          child: Text(salaryRange, style: const TextStyle(fontSize: 16)),
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        constraints: const BoxConstraints(
                          minWidth: 0.0,
                          maxWidth: 300,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(169, 169, 169, 0.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4, right: 4),
                          child: Text(employmentType, style: const TextStyle(fontSize: 16)),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        constraints: const BoxConstraints(
                          minWidth: 0.0,
                          maxWidth: 300,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(169, 169, 169, 0.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4, right: 4),
                          child: Text(shift, style: const TextStyle(fontSize: 16)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
