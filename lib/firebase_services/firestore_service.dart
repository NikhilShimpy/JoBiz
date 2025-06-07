import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:find_your_job/OnboardingScreens/JobCard_class.dart';

class FirestoreService {
  final CollectionReference jobCardsCollection =
  FirebaseFirestore.instance.collection('jobCards');

  Stream<List<JobCard>> getJobCards() {
    return jobCardsCollection.snapshots().map((snapshot) => snapshot.docs.map((doc) {
      final data = doc.data() as Map<String, dynamic>;
      return JobCard(
        jobTitle: data['jobTitle'],
        companyName: data['companyName'],
        address: data['address'],
        salaryRange: data['salaryRange'],
        employmentType: data['employmentType'],
        shift: data['shift'],
      );
    }).toList());
  }
}
