
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/utils/utils.dart';

class DailyView extends StatefulWidget {
  final String appUserId ;
   const DailyView({required this.appUserId, super.key});

  @override
  State<DailyView> createState() => _DailyViewState();}

class _DailyViewState extends State<DailyView> {

  bool _isLoading = true;

  late double chestScore;
  late double armScore;
  late double shoulderScore;

  @override
  void initState(){
    super.initState();
    getDailyExerciseData();
    setState(() {
      _isLoading=true;
    });
  }

  //GET DAILYEXERCISESCORE
  Future<void> getDailyExerciseData() async {
    final currentUserEmail = FirebaseAuth.instance.currentUser!.email.toString();
    try {
      // Fetching chestScore
      DocumentSnapshot<Map<String, dynamic>> chestSnapshot =
      await FirebaseFirestore.instance
          .collection("Exercise")
          .doc(currentUserEmail)
          .collection("Chest")
          .doc(_getTodayDate()) // Assuming a function to get today's date
          .get();

       chestScore = chestSnapshot.exists
          ? (chestSnapshot.data()!["score"] as double?) ?? 0
          : 0;

      // Fetching armScore
      DocumentSnapshot<Map<String, dynamic>> armSnapshot =
      await FirebaseFirestore.instance
          .collection("Exercise")
          .doc(currentUserEmail)
          .collection("Arm")
          .doc(_getTodayDate()) // Assuming a function to get today's date
          .get();

       armScore = armSnapshot.exists
          ? (armSnapshot.data()!["score"] as double?) ?? 0
          : 0;

      // Fetching shoulderScore
      DocumentSnapshot<Map<String, dynamic>> shoulderSnapshot =
      await FirebaseFirestore.instance
          .collection("Exercise")
          .doc(currentUserEmail)
          .collection("Shoulder")
          .doc(_getTodayDate()) // Assuming a function to get today's date
          .get();


       shoulderScore = shoulderSnapshot.exists
          ? (shoulderSnapshot.data()!["score"] as double?) ?? 0
          : 0;

       setState(() {
         _isLoading = false;
       });


    } catch (e) {
      if (kDebugMode) {
        print("Error fetching exercise data: $e");
      }
      return;
    }
  }

//FORMAT THE DATA YYYY_MM_DD STRING
  String _getTodayDate() {
    DateTime date = DateTime.now();
    String formmatedDate = DateFormat('yyyy-MM-dd').format(date).toString();
    if (kDebugMode) {
      print(date);
      print(formmatedDate);
    } 
    return formmatedDate;
  }




  @override
  Widget build(BuildContext context)  {
   double baseWidth = 1366;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return _isLoading ?
    const Center(child: CircularProgressIndicator(),
    )
    : Column(
          children: [
            Container(
                      // group13i5B (28:316)
                      margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 0*fem, 23*fem),
                      height: 215*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //CHEST SCORE BOX
                          Container(
                            // autogroupghjjSG5 (NvSh5ENghADFegRoU8GHjj)
                            width: 215*fem,
                            height: double.infinity,
                            decoration: const BoxDecoration (
                              image: DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-7-RHf.png',
                                ),
                              ),
                            ),
                            
                            child: Stack(
                              children: [
                                //CHEST SCORE
                                Positioned(
                                  // 9wB (28:320)
                                  left: 71.5*fem,
                                  top: 81.5*fem,
                                  child: Center(
                                    child: Align(
                                      child: SizedBox(
                                        width: 73*fem,
                                        height: 51*fem,
                                        child: Text(
                                          armScore.toString(),
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Wanted Sans Variable',
                                            fontSize: 40*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575*ffem/fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                //IMAGE
                                Positioned(
                                  // ellipse2e7F (28:323)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 215*fem,
                                      height: 215*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/ellipse-2-oRF.png',
                                        width: 215*fem,
                                        height: 215*fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //SPACING
                          SizedBox(
                            width: 64*fem,
                          ),
                          //ARM SCORE BOX
                          Container(
                            // autogroupfsmj941 (NvShA4Zy9mtr4dFj1gfSMj)
                            width: 215*fem,
                            height: double.infinity,
                            decoration: const BoxDecoration (
                              image: DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-5-3ws.png',
                                ),
                              ),
                            ),
                            child: Stack(
                              children: [
                                //SCORE
                                Positioned(
                                  // GuK (28:321)
                                  left: 72*fem,
                                  top: 81.5*fem,
                                  child: Center(
                                    child: Align(
                                      child: SizedBox(
                                        width: 73*fem,
                                        height: 51*fem,
                                        child: Text(
                                          armScore.toString(),
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Wanted Sans Variable',
                                            fontSize: 40*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575*ffem/fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                //IMAGE
                                Positioned(
                                  // ellipse3kpV (28:324)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 215*fem,
                                      height: 215*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/ellipse-3-hzM.png',
                                        width: 215*fem,
                                        height: 215*fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //SPACING
                          SizedBox(
                            width: 64*fem,
                          ),
                          //SHOULDER SCORE BOX
                          Container(
                            // autogroupic61G29 (NvShEPn5udtLv6Qh1yiC61)
                            width: 215*fem,
                            height: double.infinity,
                            decoration: const BoxDecoration (
                              image: DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-6-Fjs.png',
                                ),
                              ),
                            ),
                            //SCORE AND IMAGE
                            child: Stack(
                              children: [
                                //SHOULDER SCORE
                                Positioned(
                                  // ziq (28:322)
                                  left: 71.5*fem,
                                  top: 81.5*fem,
                                  child: Center(
                                    child: Align(
                                      child: SizedBox(
                                        width: 73*fem,
                                        height: 51*fem,
                                        child: Text(
                                          shoulderScore.toString(),
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Wanted Sans Variable',
                                            fontSize: 40*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575*ffem/fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                //IMAGE
                                Positioned(
                                  // ellipse472m (28:325)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 215*fem,
                                      height: 215*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/ellipse-4-AXo.png',
                                        width: 215*fem,
                                        height: 215*fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  //EXERCISE NAMES
                    Container(
                      // autogroup1mhfd17 (NvSgdzbji7oQsb1SkG1Mhf)
                      margin: EdgeInsets.fromLTRB(80*fem, 0*fem, 47*fem, 0*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //CHEST TEXT
                          Center(
                            // chestxJH (28:306)
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 214.5*fem, 0*fem),
                              child: Text(
                                'Chest',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Wanted Sans Variable',
                                  fontSize: 30*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2575*ffem/fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                          //ARM TEXT
                          Center(
                            // armGJy (28:307)
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 191.5*fem, 0*fem),
                              child: Text(
                                'Arm',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Wanted Sans Variable',
                                  fontSize: 30*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2575*ffem/fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                          //SHOULDER TEXT
                          Center(
                            // shoulderBRw (28:308)
                            child: Text(
                              'Shoulder',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Wanted Sans Variable',
                                fontSize: 30*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  
          ],
             );
       }
       }

