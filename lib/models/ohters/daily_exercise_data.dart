import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

class DailyExerciseScore {
  final double chestScore;
  final double armScore;
  final double shoulderScore;

  DailyExerciseScore({
    required this.chestScore,
    required this.armScore,
    required this.shoulderScore,
  });
}


//GET DAILYEXERCISESCORE
  Future<DailyExerciseScore?> getDailyExerciseData() async {
    final currentUserEmail = FirebaseAuth.instance.currentUser!.email;
    try {
      // Fetching chestScore
      DocumentSnapshot<Map<String, dynamic>> chestSnapshot =
      await FirebaseFirestore.instance
          .collection("Exercise")
          .doc(currentUserEmail)
          .collection("chest")
          .doc(_getTodayDate()) // Assuming a function to get today's date
          .get();

      double chestScore = chestSnapshot.exists
          ? (chestSnapshot.data()!["score"] as double?) ?? 0
          : 0;

      // Fetching armScore
      DocumentSnapshot<Map<String, dynamic>> armSnapshot =
      await FirebaseFirestore.instance
          .collection("Exercise")
          .doc(currentUserEmail)
          .collection("arm")
          .doc(_getTodayDate()) // Assuming a function to get today's date
          .get();
      double armScore = armSnapshot.exists
          ? (armSnapshot.data()!["score"] as double?) ?? 0
          : 0;

      // Fetching shoulderScore
      DocumentSnapshot<Map<String, dynamic>> shoulderSnapshot =
      await FirebaseFirestore.instance
          .collection("Exercise")
          .doc(currentUserEmail)
          .collection("shoulder")
          .doc(_getTodayDate()) // Assuming a function to get today's date
          .get();

      double shoulderScore = shoulderSnapshot.exists
          ? (shoulderSnapshot.data()!["score"] as double?) ?? 0
          : 0;

      return DailyExerciseScore(
        armScore: armScore,
        chestScore: chestScore,
        shoulderScore: shoulderScore,
      );
    } catch (e) {
      print("Error fetching exercise data: $e");
      return null;
    }
  }

//FORMAT THE DATA YYYY_MM_DD STRING
  String _getTodayDate() {
    // Implement your logic to get today's date in the format you are using
    // You might want to use a package like intl or simply format it manually
    // For example, using DateTime.now():
    DateTime date = DateTime.now();
    String formmatedDate = DateFormat('yyyy-MM-dd').format(date).toString();
    return formmatedDate;

  }



