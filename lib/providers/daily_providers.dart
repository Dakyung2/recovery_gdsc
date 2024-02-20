import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:myapp/models/ohters/date.dart';


class ExerciseDataProvider {
  //USER IDENTIFIER
  final appUserId;
  ExerciseDataProvider({required this.appUserId});

  //GET LIST OF [EXERCISENAME-SCORE-DATE]
  Future<List<ExerciseData>> getDailyData(appUserId, date) async {
    print("fetching data for user: $appUserId, date: $date");

    //FORMAT DATETIME
   // final formattedDate = DateFormat('yyyy-MM-dd').format(date);
    print(date);

    //PASS THE API
    var uri = Uri.http('recoverybody.store:8080', 'api/performance/daily?appUserId=$appUserId&date=$date');
   // final url = Uri.parse('http://recoverybody.store:8080/api/performance/daily?appUserId=$appUserId&date=$date');
    print(uri.toString());
    //GET REQUEST
    final response = await http.get(uri);
    //DECODE JSON
    if(response.statusCode ==200){
          final List<dynamic> jsonData = jsonDecode(response.body);
          print("Successfully obtained data:$jsonData");
    //MAP DATA INTO EXERCISEDATA & RETURN AS LIST
    return jsonData.map((data) => ExerciseData(
      exerciseName: data['exercise']['exerciseName'].toString(),
      score: data['score'].toString(),
      date: data['date'].toString(),
    )).toList();
    
    }else{    
      print("Failed to load Daily data");
      throw Exception("Failed to load Daily Data");
    }

  }

  Future<Map<String,List<ExerciseData>>> getWeeklyData(String appUderId) async {
    
    //WEEKLYDATAAPI
    var apiUrl = 'http://recovery.store/api/performance/weekly';

    //CACULATE THE DATE RANGE FOR THE PAST 7 DAYS
    var currentDate = DateTime.now();
    DateTime sevenDaysAgo =  currentDate.subtract(const Duration(days: 6));
    //MODIFY API URL to include CALCULATED DATE RANGE
    var url = Uri.parse("$apiUrl?appUderId=$appUserId&date=${formatDate(sevenDaysAgo).toString()}");

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);

    Map<String, List<ExerciseData>> weeklyDataByExercise = {};

    for (var data in jsonData){
      var exerciseData = ExerciseData(
      exerciseName: data['exerciseName'],
      score: data['score'],
      date:data['date'],
      );
      //GROUP DATA BY EXERCISETYPE
      weeklyDataByExercise.putIfAbsent(exerciseData.exerciseName, () => []);
      weeklyDataByExercise[exerciseData.exerciseName]!.add(exerciseData);
    }

    return weeklyDataByExercise;
    
  }
  String formatDate(DateTime date){
      return date.toString();
    }
/*
  Future<List<ExerciseData>> getMonthlyData(String userId, int year, int month) async {
    // Similar implementation for monthly data
  }
  */
}
