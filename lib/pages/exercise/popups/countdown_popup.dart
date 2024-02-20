import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/utils/utils.dart';

class CountDownPopUp extends StatefulWidget {
final VoidCallback onCountdownComplete;


  const CountDownPopUp({super.key, required this.onCountdownComplete});
  @override
  State<CountDownPopUp> createState() => _CountDownPopUpState();
}

class _CountDownPopUpState extends State<CountDownPopUp> {
  int countdown = 3;

 @override
  void initState(){
    super.initState();
    countDown();
  }
 
   Future<void> countDown()async{
    Timer.periodic(const Duration(seconds:1), (Timer timer){
      if (countdown >1){
        setState(() {
          countdown --;
        });
      }else{
        timer.cancel();
        Navigator.pop(context);        
        widget.onCountdownComplete();

      }
    });
  }


  
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1366;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Container(
      width: double.infinity,
      child: Container(
        width: double.infinity,
        height: 1024*fem,
  
        child: Stack(
          children: [
            Positioned(
              // mDw (0:628)
              left: 601.5*fem,
              top: 273*fem,
              child: Center(
                child: Align(
                  child: SizedBox(
                    width: 162*fem,
                    height: 378*fem,
                    child: 
                    Text(
                      '$countdown',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Wanted Sans Variable',
                        fontSize: 300*ffem,
                        fontWeight: FontWeight.w900,
                        height: 1.2575*ffem/fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
         //Are you Ready?
            Positioned(
              // areyoureadymt9 (0:632)
              left: 521*fem,
              top: 609.5*fem,
              child: Center(
                child: Align(
                  child: SizedBox(
                    width: 325*fem,
                    height: 63*fem,
                    child: Text(
                      'Are you ready?',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Wanted Sans Variable',
                        fontSize: 50*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2575*ffem/fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}