import 'package:flutter/material.dart';

class JobPage extends StatefulWidget {
  const JobPage({super.key});

  @override
  _JobPageState createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {
  bool showFullDescription = false;

  void toggleDescription() {
    setState(() {
      showFullDescription = !showFullDescription;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Job Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Job Description',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Salary: \$50,000 per year\n'
                  'Time: Full-time\n'
                  'Shift: Day shift\n'
                  'Qualification: Bachelor\'s degree\n'
                  'Benefits: Health insurance, Paid time off\n'
                  'Requirement: Strong communication skills\n'
                  'Experience Needed: 2+ years',
              style: const TextStyle(fontSize: 16),
              maxLines: showFullDescription ? null : 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: toggleDescription,
              child: Text(
                showFullDescription ? 'Less' : 'More',
                style: const TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
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
    home: JobPage(),
  ));
}