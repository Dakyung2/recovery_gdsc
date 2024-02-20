import 'package:flutter/material.dart';
import 'package:myapp/utils/utils.dart';

class WeeklyView2 extends StatelessWidget {
  const WeeklyView2({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 1366;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      padding: EdgeInsets.fromLTRB(30*fem, 25*fem, 30*fem, 93*fem),
      width: double.infinity,
      //box decoration
      decoration: const BoxDecoration (
        color: Color(0xfff5f5f5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Title
          Container(
            // autogroupeed3RgH (NvSiUC3nXCCnMyEvo1EED3)
            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 580.5*fem, 14*fem),
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // unionZGh (28:401)
                  margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 557.89*fem, 0*fem),
                  width: 20.61*fem,
                  height: 40*fem,
                  child: Image.asset(
                    'assets/page-1/images/union-7JM.png',
                    width: 20.61*fem,
                    height: 40*fem,
                  ),
                ),
                Center(
                  // myactivity5Vw (28:346)
                  child: Text(
                    'My Activity',
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
          //Top panel
          Container(
            // autogroupmczbogq (NvSiqgRyjavuSV86yPMCZB)
            margin: EdgeInsets.fromLTRB(189*fem, 0*fem, 189*fem, 38*fem),
            padding: EdgeInsets.fromLTRB(67*fem, 44*fem, 77*fem, 60*fem),
            width: double.infinity,
            decoration: BoxDecoration (
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(30*fem),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x4c000000),
                  offset: Offset(0*fem, 4*fem),
                  blurRadius: 7.5*fem,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupesrqfyw (NvSjQuybxgQHBDHnKVESrq)
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 48*fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // jenniesrehabilitationexerciseb (28:339)
                        margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 163*fem, 0*fem),
                        constraints: BoxConstraints (
                          maxWidth: 286*fem,
                        ),
                        child: RichText(
                          text: TextSpan(
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 30*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.3333333333*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                            children: [
                              TextSpan(
                                text: 'Jennie\'s \n',
                                style: SafeGoogleFont (
                                  'Wanted Sans Variable',
                                  fontSize: 30*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3333333333*ffem/fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                              const TextSpan(
                                text: 'R',
                              ),
                              TextSpan(
                                text: 'ehabilitation ',
                                style: SafeGoogleFont (
                                  'Wanted Sans Variable',
                                  fontSize: 30*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.3333333333*ffem/fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                              const TextSpan(
                                text: 'E',
                              ),
                              TextSpan(
                                text: 'xercise',
                                style: SafeGoogleFont (
                                  'Wanted Sans Variable',
                                  fontSize: 30*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.3333333333*ffem/fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // group12mZ7 (28:340)
                        padding: EdgeInsets.fromLTRB(43*fem, 6*fem, 30.5*fem, 6*fem),
                        height: 42*fem,
                        decoration: BoxDecoration (
                          color: const Color(0xff0061ff),
                          borderRadius: BorderRadius.circular(10*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              // dailysMF (28:345)
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 1*fem),
                                child: Text(
                                  'Daily',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Wanted Sans Variable',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2575*ffem/fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
    
                        
                            Container(
                              // autogroupaijzP4h (NvSjdVSyoyJMmZ2YieaiJZ)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 30.5*fem, 0*fem),
                              width: 104*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: const Color(0xffffffff),
                                borderRadius: BorderRadius.circular(6*fem),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    'Weekly',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Wanted Sans Variable',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2575*ffem/fem,
                                      color: const Color(0xff0061ff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              // monthlySYm (28:343)
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                child: Text(
                                  'Monthly',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Wanted Sans Variable',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2575*ffem/fem,
                                    color: const Color(0xffffffff),
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
    
                //Month and Bar
                Container(
                  // autogroupa9uf8wP (NvSjtQBoc7RYyTESy3a9uf)
                  margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 0*fem, 16*fem),
                  height: 231*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Monthes and Bar
                      Container(
                        // autogroupbnlmTyf (NvSkVPBWnqpGArFUhaBnLM)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 59*fem, 0*fem),
                        padding: EdgeInsets.fromLTRB(25*fem, 9*fem, 25*fem, 17.5*fem),
                        width: 220*fem,
                        height: double.infinity,
                        decoration: BoxDecoration (
                          color: const Color(0xff0061ff),
                          borderRadius: BorderRadius.circular(20*fem),
                        ),
                        child: GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: 1.9047619048,
                          children: [
                            //Row
                            Container(
                              // autogrouphbobKFB (NvSknTXPxuwCoV2rx7hbob)
                              height: 139*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroupshrxm7B (NvSkyTD5RV9K7yovowSHRX)
                                    padding: EdgeInsets.fromLTRB(0*fem, 31*fem, 12*fem, 0*fem),
                                    height: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          // rectangle14VJ5 (28:350)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                                          width: 11*fem,
                                          height: 84*fem,
                                          decoration: BoxDecoration (
                                            borderRadius: BorderRadius.circular(2*fem),
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                        Container(
                                          // rectangle22DUy (28:351)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                                          width: 11*fem,
                                          height: 108*fem,
                                          decoration: BoxDecoration (
                                            borderRadius: BorderRadius.circular(2*fem),
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                        Container(
                                          // rectangle23LZb (28:352)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 17*fem, 0*fem),
                                          width: 11*fem,
                                          height: 52*fem,
                                          decoration: BoxDecoration (
                                            borderRadius: BorderRadius.circular(2*fem),
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                        Container(
                                          // rectangle24s3j (28:353)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 17*fem, 0*fem),
                                          width: 11*fem,
                                          height: 68*fem,
                                          decoration: BoxDecoration (
                                            borderRadius: BorderRadius.circular(2*fem),
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                        Container(
                                          // rectangle25nwP (28:354)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                                          width: 11*fem,
                                          height: 26*fem,
                                          decoration: BoxDecoration (
                                            borderRadius: BorderRadius.circular(2*fem),
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                        Container(
                                          // rectangle26KwK (28:355)
                                          width: 11*fem,
                                          height: 102*fem,
                                          decoration: BoxDecoration (
                                            borderRadius: BorderRadius.circular(2*fem),
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // rectangle27gG5 (28:356)
                                    width: 11*fem,
                                    height: 139*fem,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(2*fem),
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //Months
                            Container(
                              // group16dSD (28:371)
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    // sunBTj (28:372)
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 13*fem, 0*fem),
                                      child: Text(
                                        'Sun',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Wanted Sans Variable',
                                          fontSize: 8*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    // monWF7 (28:373)
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 13*fem, 0*fem),
                                      child: Text(
                                        'Mon',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Wanted Sans Variable',
                                          fontSize: 8*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    // tueR7B (28:374)
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                                      child: Text(
                                        'Tue',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Wanted Sans Variable',
                                          fontSize: 8*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    // wedvpd (28:375)
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                                      child: Text(
                                        'Wed',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Wanted Sans Variable',
                                          fontSize: 8*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    // thuEqK (28:376)
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.5*fem, 0*fem),
                                      child: Text(
                                        'Thu',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Wanted Sans Variable',
                                          fontSize: 8*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    // friZsb (28:377)
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                                      child: Text(
                                        'Fri',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Wanted Sans Variable',
                                          fontSize: 8*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    // sat6cd (28:378)
                                    child: Text(
                                      'Sat',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Wanted Sans Variable',
                                        fontSize: 8*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575*ffem/fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // line1qq7 (28:395)
                              width: double.infinity,
                              height: 0.5*fem,
                              decoration: const BoxDecoration (
                                color: Color(0xffffffff),
                              ),
                            ),
                            //Result
                            RichText(
                              // avg67Q7X (28:398)
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
                                    text: ' 67%',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      //month
                      Container(
                        // autogroupaiffpww (NvSmZmZELYcZa5GMA7aifF)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 57*fem, 0*fem),
                        padding: EdgeInsets.fromLTRB(25*fem, 9*fem, 25*fem, 17.5*fem),
                        width: 220*fem,
                        height: double.infinity,
                        decoration: BoxDecoration (
                          color: const Color(0xff0061ff),
                          borderRadius: BorderRadius.circular(20*fem),
                        ),
                        child: GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: 1.9047619048,
                          children: [
                            Container(
                              // autogroupkabfK81 (NvSmoWfLAG8CUCEgUtkaBf)
                              height: 139*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    // rectangle28fBs (28:357)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                                    width: 11*fem,
                                    height: 84*fem,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(2*fem),
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                  Container(
                                    // rectangle29nXP (28:358)
                                    width: 11*fem,
                                    height: 139*fem,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(2*fem),
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                  Container(
                                    // autogroup24cdvtV (NvSmyqhTMAQr3PT8xN24cd)
                                    padding: EdgeInsets.fromLTRB(16*fem, 15*fem, 0*fem, 0*fem),
                                    height: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          // rectangle303y7 (28:359)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 17*fem, 0*fem),
                                          width: 11*fem,
                                          height: 52*fem,
                                          decoration: BoxDecoration (
                                            borderRadius: BorderRadius.circular(2*fem),
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                        Container(
                                          // rectangle31ybs (28:360)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 17*fem, 0*fem),
                                          width: 11*fem,
                                          height: 20*fem,
                                          decoration: BoxDecoration (
                                            borderRadius: BorderRadius.circular(2*fem),
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                        Container(
                                          // rectangle32i3f (28:361)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                                          width: 11*fem,
                                          height: 124*fem,
                                          decoration: BoxDecoration (
                                            borderRadius: BorderRadius.circular(2*fem),
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                        Container(
                                          // rectangle333bj (28:362)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                          width: 11*fem,
                                          height: 61*fem,
                                          decoration: BoxDecoration (
                                            borderRadius: BorderRadius.circular(2*fem),
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                        Container(
                                          // rectangle34PQh (28:363)
                                          width: 11*fem,
                                          height: 55*fem,
                                          decoration: BoxDecoration (
                                            borderRadius: BorderRadius.circular(2*fem),
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  // sunUww (28:380)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 13*fem, 0*fem),
                                    child: Text(
                                      'Sun',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Wanted Sans Variable',
                                        fontSize: 8*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575*ffem/fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // mon1S5 (28:381)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 13*fem, 0*fem),
                                    child: Text(
                                      'Mon',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Wanted Sans Variable',
                                        fontSize: 8*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575*ffem/fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // tueXfK (28:382)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                                    child: Text(
                                      'Tue',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Wanted Sans Variable',
                                        fontSize: 8*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575*ffem/fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // wedFrD (28:383)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                                    child: Text(
                                      'Wed',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Wanted Sans Variable',
                                        fontSize: 8*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575*ffem/fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // thuynD (28:384)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.5*fem, 0*fem),
                                    child: Text(
                                      'Thu',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Wanted Sans Variable',
                                        fontSize: 8*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575*ffem/fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // friWGM (28:385)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                                    child: Text(
                                      'Fri',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Wanted Sans Variable',
                                        fontSize: 8*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575*ffem/fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // satRPK (28:386)
                                  child: Text(
                                    'Sat',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Wanted Sans Variable',
                                      fontSize: 8*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2575*ffem/fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              // line2Yyj (28:396)
                              width: double.infinity,
                              height: 0.5*fem,
                              decoration: const BoxDecoration (
                                color: Color(0xffffffff),
                              ),
                            ),
                            RichText(
                              // avg82i7X (28:399)
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
                          ],
                        ),
                      ),
                      //month
                      Container(
                        // autogroupavrmwW5 (NvSnaA3cGDt6VUuZJYAVrM)
                        padding: EdgeInsets.fromLTRB(25*fem, 9*fem, 25*fem, 17.5*fem),
                        width: 220*fem,
                        height: double.infinity,
                        decoration: BoxDecoration (
                          color: const Color(0xff0061ff),
                          borderRadius: BorderRadius.circular(20*fem),
                        ),
                        child: GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: 1.9047619048,
                          children: [
                            Container(
                              // autogrouphahbqLZ (NvSnnQCCygKSiAs21XHAhb)
                              height: 139*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    // autogroupv3wvmk1 (NvSnz4XShvT1myChFhV3WV)
                                    padding: EdgeInsets.fromLTRB(0*fem, 47*fem, 17*fem, 0*fem),
                                    height: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          // rectangle3573B (28:364)
                                          width: 11*fem,
                                          height: 84*fem,
                                          decoration: BoxDecoration (
                                            borderRadius: BorderRadius.circular(2*fem),
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 16*fem,
                                        ),
                                        Container(
                                          // rectangle36Edb (28:365)
                                          width: 11*fem,
                                          height: 92*fem,
                                          decoration: BoxDecoration (
                                            borderRadius: BorderRadius.circular(2*fem),
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 16*fem,
                                        ),
                                        Container(
                                          // rectangle37AXF (28:366)
                                          width: 11*fem,
                                          height: 52*fem,
                                          decoration: BoxDecoration (
                                            borderRadius: BorderRadius.circular(2*fem),
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // rectangle387SV (28:367)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 17*fem, 0*fem),
                                    width: 11*fem,
                                    height: 139*fem,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(2*fem),
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                  Container(
                                    // rectangle39Rxy (28:368)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                                    width: 11*fem,
                                    height: 124*fem,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(2*fem),
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                  Container(
                                    // rectangle409e5 (28:369)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                    width: 11*fem,
                                    height: 139*fem,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(2*fem),
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                  Container(
                                    // rectangle415Gq (28:370)
                                    width: 11*fem,
                                    height: 55*fem,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(2*fem),
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  // sunm9f (28:388)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 13*fem, 0*fem),
                                    child: Text(
                                      'Sun',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Wanted Sans Variable',
                                        fontSize: 8*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575*ffem/fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // mon3cy (28:389)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 13*fem, 0*fem),
                                    child: Text(
                                      'Mon',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Wanted Sans Variable',
                                        fontSize: 8*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575*ffem/fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // tuexV3 (28:390)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                                    child: Text(
                                      'Tue',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Wanted Sans Variable',
                                        fontSize: 8*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575*ffem/fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // wedHGR (28:391)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                                    child: Text(
                                      'Wed',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Wanted Sans Variable',
                                        fontSize: 8*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575*ffem/fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // thu1CR (28:392)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.5*fem, 0*fem),
                                    child: Text(
                                      'Thu',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Wanted Sans Variable',
                                        fontSize: 8*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575*ffem/fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // frijPK (28:393)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                                    child: Text(
                                      'Fri',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Wanted Sans Variable',
                                        fontSize: 8*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575*ffem/fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // satfGy (28:394)
                                  child: Text(
                                    'Sat',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Wanted Sans Variable',
                                      fontSize: 8*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2575*ffem/fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              // line3p9s (28:397)
                              width: double.infinity,
                              height: 0.5*fem,
                              decoration: const BoxDecoration (
                                color: Color(0xffffffff),
                              ),
                            ),
                            RichText(
                              // avg90yYZ (28:400)
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
                                    text: ' 90%',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
               //Body Parts
                Container(
                  // autogroupcy1kdND (NvSpTX53rjfQXZ4SRxcY1K)
                  margin: EdgeInsets.fromLTRB(80*fem, 0*fem, 47*fem, 0*fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        // chestxfP (28:336)
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
                      Center(
                        // armsXT (28:337)
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
                      Center(
                        // shoulderW4d (28:338)
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
            ),
          ),
          //Doctor's Feedback
          Container(
            // group28SDB (28:404)
            margin: EdgeInsets.fromLTRB(189*fem, 0*fem, 189*fem, 0*fem),
            padding: EdgeInsets.fromLTRB(67*fem, 24*fem, 78*fem, 0*fem),
            width: double.infinity,
            decoration: BoxDecoration (
              color: const Color(0xffffba35),
              borderRadius: BorderRadius.circular(30*fem),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x4c000000),
                  offset: Offset(0*fem, 4*fem),
                  blurRadius: 7.5*fem,
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  // doctorsfeedbacku6m (28:407)
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 258*fem, 38*fem),
                  constraints: BoxConstraints (
                    maxWidth: 211*fem,
                  ),
                  child: Text(
                    'Doctor\'s \nFeedback',
                    style: SafeGoogleFont (
                      'Wanted Sans Variable',
                      fontSize: 50*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.4*ffem/fem,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
                Container(
                  // image13Cbf (28:406)
                  width: 314*fem,
                  height: 270*fem,
                  child: Image.asset(
                    'assets/page-1/images/image-13-SeZ.png',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}