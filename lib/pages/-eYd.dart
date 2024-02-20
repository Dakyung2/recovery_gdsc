import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:myapp/utils/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1366;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // AB7 (0:21)
        padding: EdgeInsets.fromLTRB(219*fem, 10*fem, 30*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/bg-h1X.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              // PZf (0:52)
              width: 57*fem,
              height: 70*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(10*fem),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // rectangle42hKT (0:53)
                    left: 0*fem,
                    top: 15*fem,
                    child: Align(
                      child: SizedBox(
                        width: 57*fem,
                        height: 41*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(10*fem),
                            color: Color(0xcc000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // aaM97 (0:54)
                    left: 9*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 33*fem,
                        height: 70*fem,
                        child: Text(
                          'Aa',
                          style: SafeGoogleFont (
                            'Wanted Sans Variable',
                            fontSize: 30*ffem,
                            fontWeight: FontWeight.w400,
                            height: 2.3333333333*ffem/fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupwjx2ETo (817w3dpNS1bmRNRX86wjX2)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 189*fem, 55*fem),
              width: double.infinity,
              height: 893*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupmd6ckS9 (817wE3gguNW6ayaoX7md6c)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 64*fem, 0*fem),
                    width: 432*fem,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // GfP (1:14)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 29*fem),
                          padding: EdgeInsets.fromLTRB(58*fem, 45*fem, 59.04*fem, 55*fem),
                          width: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xff0061ff),
                            borderRadius: BorderRadius.circular(30*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x4c000000),
                                offset: Offset(0*fem, 4*fem),
                                blurRadius: 7.5*fem,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Opacity(
                                // Znu (0:32)
                                opacity: 0.3,
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(107.01*fem, 0*fem, 0*fem, 46.98*fem),
                                  padding: EdgeInsets.fromLTRB(36.51*fem, 97.15*fem, 36.49*fem, 27.17*fem),
                                  height: 222.03*fem,
                                  decoration: BoxDecoration (
                                    image: DecorationImage (
                                      fit: BoxFit.cover,
                                      image: AssetImage (
                                        'assets/page-1/images/vector-5VP.png',
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        // autogroupqqmaPmw (817wa37P1W9vz4T75hqQma)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0.02*fem, 13.04*fem, 0.07*fem),
                                        height: double.infinity,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // vectortih (0:37)
                                              margin: EdgeInsets.fromLTRB(0.06*fem, 0*fem, 0*fem, 12.95*fem),
                                              width: 23.85*fem,
                                              height: 23.97*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-feD.png',
                                                width: 23.85*fem,
                                                height: 23.97*fem,
                                              ),
                                            ),
                                            Container(
                                              // vectorb7K (0:42)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.01*fem, 13.02*fem),
                                              width: 23.91*fem,
                                              height: 23.89*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-TQZ.png',
                                                width: 23.91*fem,
                                                height: 23.89*fem,
                                              ),
                                            ),
                                            Container(
                                              // vectorVyP (0:45)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                              width: 23.83*fem,
                                              height: 23.78*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-km3.png',
                                                width: 23.83*fem,
                                                height: 23.78*fem,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // autogroup7l9sQaZ (817whXttYoXNPDXUAg7L9S)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.81*fem, 0.03*fem),
                                        height: double.infinity,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // vectoriLM (0:34)
                                              margin: EdgeInsets.fromLTRB(0.01*fem, 0*fem, 0*fem, 12.99*fem),
                                              width: 24.12*fem,
                                              height: 23.99*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-k8m.png',
                                                width: 24.12*fem,
                                                height: 23.99*fem,
                                              ),
                                            ),
                                            Container(
                                              // vectorE3o (0:39)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.08*fem, 12.98*fem),
                                              width: 24.05*fem,
                                              height: 23.85*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-C1j.png',
                                                width: 24.05*fem,
                                                height: 23.85*fem,
                                              ),
                                            ),
                                            Container(
                                              // vectorLcd (0:40)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.02*fem, 0*fem),
                                              width: 24.04*fem,
                                              height: 23.85*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-DPj.png',
                                                width: 24.04*fem,
                                                height: 23.85*fem,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // autogroupbfncExu (817wpcXRfopPpJshdvbFnC)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0.02*fem, 13.08*fem, 0.08*fem),
                                        height: double.infinity,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // vectormT3 (0:35)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13.03*fem),
                                              width: 24.09*fem,
                                              height: 23.92*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-Wi1.png',
                                                width: 24.09*fem,
                                                height: 23.92*fem,
                                              ),
                                            ),
                                            Container(
                                              // vectorVP3 (0:41)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.03*fem, 12.96*fem),
                                              width: 24.07*fem,
                                              height: 23.82*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-PVo.png',
                                                width: 24.07*fem,
                                                height: 23.82*fem,
                                              ),
                                            ),
                                            Container(
                                              // vectorcCm (0:38)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.01*fem, 0*fem),
                                              width: 24.07*fem,
                                              height: 23.86*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-7vD.png',
                                                width: 24.07*fem,
                                                height: 23.86*fem,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // autogroup3b5nvz9 (817wvwgDEgaGugiVoH3b5N)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0.09*fem, 0*fem, 0*fem),
                                        height: double.infinity,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // vector4aZ (0:36)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12.92*fem),
                                              width: 23.88*fem,
                                              height: 23.91*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-1vu.png',
                                                width: 23.88*fem,
                                                height: 23.91*fem,
                                              ),
                                            ),
                                            Container(
                                              // vectorB9P (0:43)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.05*fem, 13.07*fem),
                                              width: 23.83*fem,
                                              height: 23.86*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-pS9.png',
                                                width: 23.83*fem,
                                                height: 23.86*fem,
                                              ),
                                            ),
                                            Container(
                                              // vectortpV (0:44)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.05*fem, 0*fem),
                                              width: 23.83*fem,
                                              height: 23.86*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-Q61.png',
                                                width: 23.83*fem,
                                                height: 23.86*fem,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // calendarR3j (0:29)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 114.96*fem, 0*fem),
                                child: Text(
                                  'Calendar',
                                  style: SafeGoogleFont (
                                    'Wanted Sans Variable',
                                    fontSize: 50*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2575*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // X6m (1:15)
                          padding: EdgeInsets.fromLTRB(58*fem, 52.99*fem, 59.99*fem, 49*fem),
                          width: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xff00d86e),
                            borderRadius: BorderRadius.circular(30*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x4c000000),
                                offset: Offset(0*fem, 4*fem),
                                blurRadius: 7.5*fem,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupwxkeMrV (817xJw3a9pzVYgGdWvWxKE)
                                margin: EdgeInsets.fromLTRB(107*fem, 0*fem, 0*fem, 40*fem),
                                width: 207.01*fem,
                                height: 227.01*fem,
                                child: Image.asset(
                                  'assets/page-1/images/auto-group-wxke.png',
                                  width: 207.01*fem,
                                  height: 227.01*fem,
                                ),
                              ),
                              Container(
                                // myactivityrYM (0:30)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 70.01*fem, 0*fem),
                                child: Text(
                                  'My Activity',
                                  style: SafeGoogleFont (
                                    'Wanted Sans Variable',
                                    fontSize: 50*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2575*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    // ktd (1:16)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(59*fem, 113*fem, 0*fem, 49*fem),
                      height: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xffffba35),
                        borderRadius: BorderRadius.circular(30*fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x4c000000),
                            offset: Offset(0*fem, 4*fem),
                            blurRadius: 7.5*fem,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Opacity(
                            // nKX (0:26)
                            opacity: 0.3,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(56*fem, 0*fem, 0*fem, 272*fem),
                              width: 317*fem,
                              height: 319*fem,
                              child: Image.asset(
                                'assets/page-1/images/-XgH.png',
                                width: 317*fem,
                                height: 319*fem,
                              ),
                            ),
                          ),
                          Container(
                            // workoutcategoriesUi9 (0:31)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 139*fem, 0*fem),
                            constraints: BoxConstraints (
                              maxWidth: 234*fem,
                            ),
                            child: Text(
                              'Workout\nCategories',
                              style: SafeGoogleFont (
                                'Wanted Sans Variable',
                                fontSize: 50*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.4*ffem/fem,
                                color: Color(0xffffffff),
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
            Opacity(
              // group20xdK (7:45)
              opacity: 0,
              child: Container(
                margin: EdgeInsets.fromLTRB(112*fem, 0*fem, 300*fem, 0*fem),
                padding: EdgeInsets.fromLTRB(58*fem, 39*fem, 39.23*fem, 67*fem),
                width: double.infinity,
                height: 502*fem,
                decoration: BoxDecoration (
                  color: Color(0x7f000000),
                  borderRadius: BorderRadius.circular(30*fem),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x4c000000),
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
                          // autogroupmnzjNh3 (817yaUmMj2EGTDxDgNmNZJ)
                          margin: EdgeInsets.fromLTRB(164*fem, 0*fem, 0*fem, 55*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                // settingfontsize7Pj (7:47)
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 15*fem, 165*fem, 0*fem),
                                  child: Text(
                                    'Setting Font Size',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Wanted Sans Variable',
                                      fontSize: 35*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2575*ffem/fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // Cvy (7:60)
                                width: 18.77*fem,
                                height: 20*fem,
                                child: Image.asset(
                                  'assets/page-1/images/-fG9.png',
                                  width: 18.77*fem,
                                  height: 20*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupaxbjjg1 (817yfJxeBdursAn9DwAXBJ)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18.77*fem, 0*fem),
                          height: 281*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // s1X (7:48)
                                padding: EdgeInsets.fromLTRB(58.5*fem, 107.5*fem, 58.5*fem, 31*fem),
                                width: 189*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(20*fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      // aaMxH (7:51)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 59.5*fem),
                                        child: Text(
                                          'Aa',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Wanted Sans Variable',
                                            fontSize: 35*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2575*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      // small57b (7:50)
                                      child: Text(
                                        'Small',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Wanted Sans Variable',
                                          fontSize: 30*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 11*fem,
                              ),
                              Container(
                                // BRX (7:52)
                                padding: EdgeInsets.fromLTRB(43*fem, 92.5*fem, 44*fem, 31*fem),
                                width: 189*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(20*fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      // aasZF (7:55)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 56.5*fem),
                                        child: Text(
                                          'Aa',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Wanted Sans Variable',
                                            fontSize: 50*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2575*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      // mediummuX (7:54)
                                      child: Text(
                                        'Medium',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Wanted Sans Variable',
                                          fontSize: 30*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 11*fem,
                              ),
                              Container(
                                // tz9 (7:56)
                                padding: EdgeInsets.fromLTRB(57*fem, 78*fem, 59*fem, 31*fem),
                                width: 189*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(20*fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      // aaCE9 (7:59)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 52*fem),
                                        child: Text(
                                          'Aa',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Wanted Sans Variable',
                                            fontSize: 65*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2575*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      // large76D (7:58)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                        child: Text(
                                          'Large',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Wanted Sans Variable',
                                            fontSize: 30*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575*ffem/fem,
                                            color: Color(0xff000000),
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
                      ],
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