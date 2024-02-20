import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:myapp/utils/utils.dart';

class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 1366;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // muf (0:123)
        padding: EdgeInsets.fromLTRB(219*fem, 10*fem, 30*fem, 51*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/bg.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              // 24u (0:153)
              width: 57*fem,
              height: 70*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(10*fem),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // rectangle42jzu (0:154)
                    left: 0*fem,
                    top: 15*fem,
                    child: Align(
                      child: SizedBox(
                        width: 57*fem,
                        height: 41*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(10*fem),
                            color: const Color(0xcc000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // aadaV (0:155)
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
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup4lwv6DB (8185nU6CCKCeoZTKe34Lwv)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 189*fem, 0*fem),
              width: 928*fem,
              height: 893*fem,
              child: Stack(
                children: [
                  Positioned(
                    // oNV (1:12)
                    left: 0*fem,
                    top: 0*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(58*fem, 45*fem, 59.04*fem, 55*fem),
                      width: 432*fem,
                      height: 432*fem,
                      decoration: BoxDecoration (
                        color: const Color(0xff0061ff),
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
                          Opacity(
                            // SRT (0:132)
                            opacity: 0.3,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(107.01*fem, 0*fem, 0*fem, 64.98*fem),
                              padding: EdgeInsets.fromLTRB(36.51*fem, 97.15*fem, 36.49*fem, 27.17*fem),
                              height: 222.03*fem,
                              decoration: const BoxDecoration (
                                image: DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/vector-4uj.png',
                                  ),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    // autogroupnaagu49 (81865xb3ngQ1QFxqWJNAAG)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0.02*fem, 13.04*fem, 0.07*fem),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // vectorcz9 (0:137)
                                          margin: EdgeInsets.fromLTRB(0.06*fem, 0*fem, 0*fem, 12.94*fem),
                                          width: 23.85*fem,
                                          height: 23.97*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vector-zbo.png',
                                            width: 23.85*fem,
                                            height: 23.97*fem,
                                          ),
                                        ),
                                        Container(
                                          // vectorLfF (0:142)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13.02*fem),
                                          width: 23.91*fem,
                                          height: 23.89*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vector-rxm.png',
                                            width: 23.91*fem,
                                            height: 23.89*fem,
                                          ),
                                        ),
                                        Container(
                                          // vectorFnD (0:145)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                          width: 23.83*fem,
                                          height: 23.78*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vector-huo.png',
                                            width: 23.83*fem,
                                            height: 23.78*fem,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // autogroupvgujNrq (8186CYERCvzwGse7SHVguJ)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.81*fem, 0.03*fem),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // vectorK1P (0:134)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12.99*fem),
                                          width: 24.12*fem,
                                          height: 23.99*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vector-cDB.png',
                                            width: 24.12*fem,
                                            height: 23.99*fem,
                                          ),
                                        ),
                                        Container(
                                          // vectorpyj (0:139)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.08*fem, 12.98*fem),
                                          width: 24.05*fem,
                                          height: 23.85*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vector-Q7o.png',
                                            width: 24.05*fem,
                                            height: 23.85*fem,
                                          ),
                                        ),
                                        Container(
                                          // vectorYPw (0:140)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.02*fem, 0*fem),
                                          width: 24.04*fem,
                                          height: 23.85*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vector-jtq.png',
                                            width: 24.04*fem,
                                            height: 23.85*fem,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // autogroupk1waGaq (8186KHYBC6qELKD3DMk1wa)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0.02*fem, 13.08*fem, 0.08*fem),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // vectorBxh (0:135)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13.03*fem),
                                          width: 24.09*fem,
                                          height: 23.92*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vector-hBb.png',
                                            width: 24.09*fem,
                                            height: 23.92*fem,
                                          ),
                                        ),
                                        Container(
                                          // vector75f (0:141)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.02*fem, 12.96*fem),
                                          width: 24.07*fem,
                                          height: 23.82*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vector-1DF.png',
                                            width: 24.07*fem,
                                            height: 23.82*fem,
                                          ),
                                        ),
                                        Container(
                                          // vectoroz5 (0:138)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.01*fem, 0*fem),
                                          width: 24.07*fem,
                                          height: 23.86*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vector-3Fs.png',
                                            width: 24.07*fem,
                                            height: 23.86*fem,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // autogroupfyriw4h (8186SHLX2eWaAzcSm4fYRi)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0.09*fem, 0*fem, 0*fem),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // vectorGMs (0:136)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12.92*fem),
                                          width: 23.88*fem,
                                          height: 23.91*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vector-dLR.png',
                                            width: 23.88*fem,
                                            height: 23.91*fem,
                                          ),
                                        ),
                                        Container(
                                          // vectorPBb (0:143)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.05*fem, 13.07*fem),
                                          width: 23.83*fem,
                                          height: 23.86*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vector-gqs.png',
                                            width: 23.83*fem,
                                            height: 23.86*fem,
                                          ),
                                        ),
                                        Container(
                                          // vectorhi5 (0:144)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.05*fem, 0*fem),
                                          width: 23.83*fem,
                                          height: 23.86*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vector.png',
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
                            // calendar2kM (0:129)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 174.96*fem, 0*fem),
                            child: Text(
                              'Calendar',
                              style: SafeGoogleFont (
                                'Wanted Sans Variable',
                                fontSize: 35*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // wMX (1:13)
                    left: 0*fem,
                    top: 461*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(58*fem, 53*fem, 59.99*fem, 49*fem),
                      width: 432*fem,
                      height: 432*fem,
                      decoration: BoxDecoration (
                        color: const Color(0xff00d86e),
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
                            // autogroupkkatcCm (8186o759yNKEWCw1Z6KKat)
                            margin: EdgeInsets.fromLTRB(107*fem, 0*fem, 0*fem, 58*fem),
                            width: 207.01*fem,
                            height: 227*fem,
                            child: Image.asset(
                              'assets/page-1/images/auto-group-kkat.png',
                              width: 207.01*fem,
                              height: 227*fem,
                            ),
                          ),
                          Container(
                            // myactivityJ5b (0:130)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 143.01*fem, 0*fem),
                            child: Text(
                              'My Activity',
                              style: SafeGoogleFont (
                                'Wanted Sans Variable',
                                fontSize: 35*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // zUD (1:9)
                    left: 496*fem,
                    top: 0*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(59*fem, 113*fem, 0*fem, 49*fem),
                      width: 432*fem,
                      height: 893*fem,
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Opacity(
                            // eHs (0:159)
                            opacity: 0.3,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(56*fem, 0*fem, 0*fem, 295*fem),
                              width: 317*fem,
                              height: 319*fem,
                              child: Image.asset(
                                'assets/page-1/images/-TdF.png',
                                width: 317*fem,
                                height: 319*fem,
                              ),
                            ),
                          ),
                          Container(
                            // workoutcategoriesYe9 (0:131)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 209*fem, 0*fem),
                            constraints: BoxConstraints (
                              maxWidth: 164*fem,
                            ),
                            child: Text(
                              'Workout\nCategories',
                              style: SafeGoogleFont (
                                'Wanted Sans Variable',
                                fontSize: 35*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.6571428571*ffem/fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // group202pD (0:161)
                    left: 112*fem,
                    top: 181*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(58*fem, 39*fem, 39.23*fem, 67*fem),
                      width: 705*fem,
                      height: 502*fem,
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
                                // autogroup8ndasZw (81872MC66L8mqrEPLc8nDa)
                                margin: EdgeInsets.fromLTRB(164*fem, 0*fem, 0*fem, 55*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      // settingfontsizebkq (0:163)
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
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      // hos (0:173)
                                      onPressed: () {},
                                      style: TextButton.styleFrom (
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Container(
                                        width: 18.77*fem,
                                        height: 20*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/-VTb.png',
                                          width: 18.77*fem,
                                          height: 20*fem,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogroupsisvpdb (81877mCjYA89Qgg6LySisv)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18.77*fem, 0*fem),
                                height: 281*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // YpV (1:21)
                                      padding: EdgeInsets.fromLTRB(58.5*fem, 107.5*fem, 58.5*fem, 31*fem),
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
                                            // aa3mF (0:170)
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
                                                  color: const Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            // smallxdK (0:167)
                                            child: Text(
                                              'Small',
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
                                    SizedBox(
                                      width: 11*fem,
                                    ),
                                    TextButton(
                                      // G8D (1:22)
                                      onPressed: () {},
                                      style: TextButton.styleFrom (
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(43*fem, 92.5*fem, 44*fem, 31*fem),
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
                                              // aa8RK (0:171)
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
                                                    color: const Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Center(
                                              // mediumdss (0:168)
                                              child: Text(
                                                'Medium',
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
                                    Container(
                                      // Yjw (1:23)
                                      padding: EdgeInsets.fromLTRB(57*fem, 78*fem, 59*fem, 31*fem),
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
                                            // aa3wb (0:172)
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
                                                  color: const Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            // largeAFX (0:169)
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
                                                  color: const Color(0xff000000),
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
          ],
        ),
      ),
          );
  }
}