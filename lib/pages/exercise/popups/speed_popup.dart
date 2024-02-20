import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:myapp/utils/utils.dart';

class SpeedPopup extends StatefulWidget {
  //final bool speedSelected = false;
    final GlobalKey<NavigatorState> parentNavigatorKey;

  final Function(double) onSelectSpeed;

  const SpeedPopup({required this.parentNavigatorKey, required this.onSelectSpeed, super.key});

  @override
  State<SpeedPopup> createState() => _SpeedPopupState();
}

class _SpeedPopupState extends State<SpeedPopup> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1366;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      padding: EdgeInsets.fromLTRB(30*fem, 25*fem, 30*fem, 78.99*fem),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 616*fem, 14*fem),
            width: double.infinity,
          ),
          Container(
            // autogroupf55wGTw (8189o6uZmyWGxed54kF55W)
            margin: EdgeInsets.fromLTRB(189*fem, 0*fem, 189*fem, 42*fem),
            padding: EdgeInsets.fromLTRB(112*fem, 181*fem, 111*fem, 41*fem),
            width: double.infinity,
            height: 724*fem,
            decoration: BoxDecoration (
              borderRadius: BorderRadius.circular(30*fem),
             
            ),
            child: Container(
              // group20w4H (0:238)
              padding: EdgeInsets.fromLTRB(58*fem, 39*fem, 39.23*fem, 67*fem),
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration (
                color: const Color(0x7f000000),
                borderRadius: BorderRadius.circular(30*fem),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x4c000000),
                    offset: Offset(0*fem, 4*fem),
                    blurRadius: 7.5*fem,
                  ),
                ],
              ),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur (
                    sigmaX: 75*fem,
                    sigmaY: 75*fem,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupewdwAhj (818A1BPmvWiFzWgsveEwdW)
                        margin: EdgeInsets.fromLTRB(112.5*fem, 0*fem, 0*fem, 55*fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              // settingplaybackspeedVED (0:240)
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0*fem, 15*fem, 113.5*fem, 0*fem),
                                child: Text(
                                  'Setting Playback Speed',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Wanted Sans Variable',
                                    fontSize: 35*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2575*ffem/fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.of(context).pop();

                              },
                              child: Container(
                                // unionMGR (0:259)
                                width: 18.77*fem,
                                height: 20*fem,
                                child: Image.asset(
                                  'assets/page-1/images/union-Dho.png',
                                  width: 18.77*fem,
                                  height: 20*fem,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupktbr4gd (818A91W4beYRmKYYhnkTbr)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18.77*fem, 0*fem),
                        height: 281*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: ()  {
                                 widget.onSelectSpeed(0.5);
                                widget.parentNavigatorKey.currentState!.pop();
                                
                                
                              },
                              child: Container(
                                // autogroupfz96n6q (818AJqZ25o8yn363dzfZ96)
                                padding: EdgeInsets.fromLTRB(33*fem, 92.5*fem, 33*fem, 31*fem),
                                width: 189*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(20*fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      // 5bj (0:248)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 56.5*fem),
                                        child: Text(
                                          '0.5',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Wanted Sans Variable',
                                            fontSize: 50*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2575*ffem/fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      // veryslownm3 (0:244)
                                      child: Text(
                                        'Very Slow',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Wanted Sans Variable',
                                          fontSize: 30*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 11*fem,
                            ),
                            GestureDetector(
                              onTap: (){
                                 widget.onSelectSpeed(0.75);
                                 widget.parentNavigatorKey.currentState!.pop();


                              },
                              child: Container(
                                // autogroupr6ep5EM (818AQAjUFAWfkTavipR6ep)
                                padding: EdgeInsets.fromLTRB(45.5*fem, 92.5*fem, 48.5*fem, 31*fem),
                                width: 189*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(20*fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      // AWh (0:247)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 56.5*fem),
                                        child: Text(
                                          '0.75',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Wanted Sans Variable',
                                            fontSize: 50*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2575*ffem/fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      // slowsvu (0:245)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 0*fem),
                                        child: Text(
                                          'Slow',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Wanted Sans Variable',
                                            fontSize: 30*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575*ffem/fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 11*fem,
                            ),
                            GestureDetector(
                              onTap: (){
                                 widget.onSelectSpeed(1);
                                widget.parentNavigatorKey.currentState!.pop();
                              },
                              child: Container(
                                // autogroupcew8yDF (818AWFPfxfRW4bbF7YCEW8)
                                padding: EdgeInsets.fromLTRB(47*fem, 92.5*fem, 48*fem, 31*fem),
                                width: 189*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(20*fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      // Gy3 (0:249)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 56.5*fem),
                                        child: Text(
                                          '1.0',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Wanted Sans Variable',
                                            fontSize: 50*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2575*ffem/fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      // normalMjb (0:246)
                                      child: Text(
                                        'Normal',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Wanted Sans Variable',
                                          fontSize: 30*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ],
      ),
    );
  }
}