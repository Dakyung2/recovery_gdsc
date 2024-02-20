import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:myapp/pages/exercise/screens/continue_selection_page.dart';
import 'package:myapp/utils/utils.dart';

class ResultPopup extends StatefulWidget {
  final String exerciseName;
  final String appUserId;
  final double result;
  const ResultPopup({
    required this.exerciseName,
    required this.appUserId,
    required this.result,
    super.key
});



  @override
  State<ResultPopup> createState() => _ResultPopupState();
}

class _ResultPopupState extends State<ResultPopup> {
  
  @override
  void initState(){
        Future.delayed(
        const Duration(
            seconds: 5), () {Navigator.push(context, MaterialPageRoute(
              builder: (context)=> ContinuePopup(exerciseName: widget.exerciseName, appUserId: widget.appUserId)));
    }
    );

  }


  @override
  Widget build(BuildContext context) {
    double baseWidth = 1366;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Stack(
        children: [
         Positioned.fill(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur (
                  sigmaX: 5*fem,
                  sigmaY: 5*fem,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: const BoxDecoration (
                      color: Color(0x66000000),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // group2ZwT (0:791)
            left: 171*fem,
            top: 284.5*fem,
            child: Container(
              padding: EdgeInsets.fromLTRB(48.5*fem, 0*fem, 48.5*fem, 0*fem),
              width: 1042*fem,
              height: 262.5*fem,
              decoration: BoxDecoration (
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x4c000000),
                    offset: Offset(0*fem, 4*fem),
                    blurRadius: 7.5*fem,
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6.5*fem),
                      //CALL THE RESULT DATA
                      child: Text(
                        widget.result.toString(),
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Wanted Sans Variable',
                          fontSize: 100*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2575*ffem/fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                    Text(
                      // tryitonemoretimef7K (0:792)
                      'Try it one more time!',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Wanted Sans Variable',
                        fontSize: 100*ffem,
                        fontWeight: FontWeight.w900,
                        height: 1.3*ffem/fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      
          Positioned(
            // unionazy (0:794)
            left: 30*fem,
            top: 26*fem,
            child: Align(
              child: SizedBox(
                width: 20.61*fem,
                height: 40*fem,
              //CALL THE RESULT DATA
                child: Image.asset(
                  'assets/page-1/images/union-fLh.png',
                  width: 20.61*fem,
                  height: 40*fem,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}