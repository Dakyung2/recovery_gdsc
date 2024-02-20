import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/pages/myactivity/weekly/components/weekly_view_graph.dart';
import 'package:myapp/utils/utils.dart';

class WeeklyChart extends StatefulWidget {
  final String appUserId;
  const WeeklyChart({
    required this.appUserId,
    super.key});

  @override
  State<WeeklyChart> createState() => _WeeklyChartState();
}
//ROW OF GRAPHS FOR ALL EXERCISENAMES
class _WeeklyChartState extends State<WeeklyChart> { 
  @override
  void initState(){
    super.initState();
    print(widget.appUserId);
  }
    @override 
    Widget build(BuildContext context){
    double baseWidth = 1366;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
          return Row(
            children: [
              ExerciseChart(appUserId: widget.appUserId, exerciseName : "Chest"),
              ExerciseChart(appUserId: widget.appUserId, exerciseName : "Arm"),
            ExerciseChart(appUserId: widget.appUserId, exerciseName : "Shoulder"),

              /*
              Container(
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 59*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(25*fem, 9*fem, 25*fem, 17.5*fem),
                          width: 220*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: const Color(0xff0061ff),
                            borderRadius: BorderRadius.circular(20*fem),
                          ),
                child: Column(
                  children: [
                    Center(
                                child: RichText(
                                  text: TextSpan(
                                    style: SafeGoogleFont (
                                      'Wanted Sans Variable',
                                      fontSize: 20*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2575*ffem/fem,
                                      color: const Color(0xffffffff),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'AVG',
                                        style: SafeGoogleFont (
                                          'Wanted Sans Variable',
                                          fontSize: 10*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                      const TextSpan(
                                        text: ' 82%',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Divider(
                                color: Color(0xffffffff,
                              ),),
                    
                    
                    BarChartWidget(
                      exerciseData: (snapshot.data!['Chest'] as Map<String, List<double>>) ?? {},
                      id: 'Chest',
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  BarChartWidget(
                    exerciseData: (snapshot.data!['Arm'] as Map<String, List<double>>) ?? {},
                    id: 'Arm',
                  ),
                ],
              ),
              Column(
                children: [
                  BarChartWidget(
                    exerciseData: (snapshot.data!['Shoulder'] as Map<String, List<double>>) ?? {},
                    id: 'Shoulder',
                  ),
                ],
              ),
            
            */],
          ); 
          
    }   
}

//WIDET FOR EACH SPECIFIC EXERCISENAME
class ExerciseChart extends StatefulWidget {
  final String appUserId;
  final String exerciseName;

  const ExerciseChart({
    required this.appUserId,
    required this.exerciseName,
    super.key,
  });

  @override
  State<ExerciseChart> createState() => _ExerciseChartState();
}

class _ExerciseChartState extends State<ExerciseChart> {
   late List<exerciseData> weeklyExerciseData;
    late Future<List<exerciseData>> futureweeklyExerciseData;
  @override
  void initState() {
    super.initState();
    futureweeklyExerciseData = getExerciseWeeklyScores();

  }

  Future <List<exerciseData>> getExerciseWeeklyScores() async {

    DateTime oneWeekAgo = await DateTime.now().subtract(Duration(days: 7));

    final formattedDate = DateFormat('yyyy-MM-dd').format(oneWeekAgo);
    print(oneWeekAgo);
        List<exerciseData> exerciseDataList =[];

    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("Exercise")
        .doc(widget.appUserId)
        .collection(widget.exerciseName)
        .where("date", isGreaterThan: oneWeekAgo)
        .orderBy("date", descending: true)
        .get();
      //data = querySnapshot.
        //print(querySnapshot);



    //Map<DateTime, double> exerciseData = {};

     querySnapshot.docs.forEach((doc) {
      DateTime date = doc["date"].toDate();
      double score = doc["score"].toDouble();
      exerciseDataList..add(
        exerciseData(
          date: date, 
          score: score));
    });
    setState(() {
      weeklyExerciseData = exerciseDataList;
    });

    return exerciseDataList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 59, 0),
      padding: const EdgeInsets.fromLTRB(25, 9, 25, 17.5),
      width: 220,
      height: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xff0061ff),
        borderRadius: BorderRadius.circular(20),
      ),
      child: FutureBuilder (
        future: futureweeklyExerciseData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else {

            //Map<DateTime, double> exerciseData = snapshot.data!;

            return Column(
              children: [
                Text(widget.exerciseName),
                BarChartWidget(
                  id: widget.exerciseName,
                  data: weeklyExerciseData,
                ),
              ],
            );
          }
        },
      ),
    );
  }
}

class exerciseData {
  final DateTime date;
  final double score;
  //final charts.Color barColor;

  exerciseData(
    {
      required this.date,
      required this.score,
    }
  );
}



