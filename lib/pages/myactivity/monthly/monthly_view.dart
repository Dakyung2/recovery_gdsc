import 'package:flutter/material.dart';
import 'package:myapp/utils/utils.dart';

class MonthlyViewOriginal extends StatelessWidget {
  const MonthlyViewOriginal({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 1366;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      // ipadpro12929sBs (28:408)
      padding: EdgeInsets.fromLTRB(30*fem, 25*fem, 30*fem, 93*fem),
      width: double.infinity,
      decoration: const BoxDecoration (
        color: Color(0xfff5f5f5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // autogrouphgcmxUD (NvSsokpjcrMLAKTHGqHGcm)
            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 580.5*fem, 14*fem),
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // union5Hw (28:499)
                  margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 557.89*fem, 0*fem),
                  width: 20.61*fem,
                  height: 40*fem,
                  child: Image.asset(
                    'assets/page-1/images/union-VtR.png',
                    width: 20.61*fem,
                    height: 40*fem,
                  ),
                ),
                Center(
                  // myactivitybGH (28:456)
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
          Container(
            // autogroupdqcv6yj (NvStEQnKcgTPnXFrXtdQcV)
            margin: EdgeInsets.fromLTRB(189*fem, 0*fem, 189*fem, 38*fem),
            padding: EdgeInsets.fromLTRB(67*fem, 44*fem, 77*fem, 17*fem),
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
                  // autogroupgwptMuf (NvStzZBS1tXCFLFmpGgwPT)
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 29*fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // jenniesrehabilitationexerciseV (28:449)
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
                        // group12s9F (28:450)
                        padding: EdgeInsets.fromLTRB(43*fem, 6*fem, 6*fem, 6*fem),
                        height: 42*fem,
                        decoration: BoxDecoration (
                          color: const Color(0xff0061ff),
                          borderRadius: BorderRadius.circular(10*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              // dailyZGy (28:455)
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 66*fem, 1*fem),
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
                            Center(
                              // weeklyf57 (28:454)
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 34*fem, 1*fem),
                                child: Text(
                                  'Weekly',
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
                              // autogroupmasrZgH (NvSuFiQqfQVSEUJ9qJMaSR)
                              width: 104*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: const Color(0xffffffff),
                                borderRadius: BorderRadius.circular(6*fem),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    'Monthly',
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              
                
                Container(
                  // autogroup8hlqr9b (NvSuQdKf2WKUieSZcX8HLq)
                  margin: EdgeInsets.fromLTRB(7*fem, 0*fem, 0*fem, 2.5*fem),
                  width: 777*fem,
                  height: 285*fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // ZZo (28:410)
                        left: 6.5*fem,
                        top: 273.5*fem,
                        child: Center(
                          child: Align(
                            child: SizedBox(
                              width: 4*fem,
                              height: 11*fem,
                              child: Text(
                                '0',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Wanted Sans Variable',
                                  fontSize: 8*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575*ffem/fem,
                                  color: const Color(0xff0061ff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // 3Uy (28:411)
                        left: 4*fem,
                        top: 222.5*fem,
                        child: Center(
                          child: Align(
                            child: SizedBox(
                              width: 8*fem,
                              height: 11*fem,
                              child: Text(
                                '20',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Wanted Sans Variable',
                                  fontSize: 8*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575*ffem/fem,
                                  color: const Color(0xff0061ff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // k8V (28:412)
                        left: 4*fem,
                        top: 171.5*fem,
                        child: Center(
                          child: Align(
                            child: SizedBox(
                              width: 8*fem,
                              height: 11*fem,
                              child: Text(
                                '40',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Wanted Sans Variable',
                                  fontSize: 8*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575*ffem/fem,
                                  color: const Color(0xff0061ff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // ejf (28:413)
                        left: 4*fem,
                        top: 120.5*fem,
                        child: Center(
                          child: Align(
                            child: SizedBox(
                              width: 8*fem,
                              height: 11*fem,
                              child: Text(
                                '60',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Wanted Sans Variable',
                                  fontSize: 8*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575*ffem/fem,
                                  color: const Color(0xff0061ff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // 9wK (28:414)
                        left: 4*fem,
                        top: 69.5*fem,
                        child: Center(
                          child: Align(
                            child: SizedBox(
                              width: 8*fem,
                              height: 11*fem,
                              child: Text(
                                '80',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Wanted Sans Variable',
                                  fontSize: 8*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575*ffem/fem,
                                  color: const Color(0xff0061ff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // tnR (28:415)
                        left: 0*fem,
                        top: 18.5*fem,
                        child: Center(
                          child: Align(
                            child: SizedBox(
                              width: 12*fem,
                              height: 11*fem,
                              child: Text(
                                '100',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Wanted Sans Variable',
                                  fontSize: 8*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575*ffem/fem,
                                  color: const Color(0xff0061ff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // avgbB3 (28:416)
                        left: 1.5*fem,
                        top: 7.5*fem,
                        child: Center(
                          child: Align(
                            child: SizedBox(
                              width: 25*fem,
                              height: 11*fem,
                              child: Text(
                                'AVG(%)',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Wanted Sans Variable',
                                  fontSize: 8*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575*ffem/fem,
                                  color: const Color(0xff0061ff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // line1fgh (28:457)
                        left: 26*fem,
                        top: 62*fem,
                        child: Align(
                          child: SizedBox(
                            width: 170*fem,
                            height: 0.5*fem,
                            child: Container(
                              decoration: const BoxDecoration (
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // line2Pch (28:458)
                        left: 305*fem,
                        top: 62*fem,
                        child: Align(
                          child: SizedBox(
                            width: 170*fem,
                            height: 0.5*fem,
                            child: Container(
                              decoration: const BoxDecoration (
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // line3iey (28:459)
                        left: 582*fem,
                        top: 62*fem,
                        child: Align(
                          child: SizedBox(
                            width: 170*fem,
                            height: 0.5*fem,
                            child: Container(
                              decoration: const BoxDecoration (
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // union3x9 (28:460)
                        left: 16*fem,
                        top: 20*fem,
                        child: Align(
                          child: SizedBox(
                            width: 761*fem,
                            height: 265*fem,
                            child: Image.asset(
                              'assets/page-1/images/union-RKK.png',
                              width: 761*fem,
                              height: 265*fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // monthlyfillaSH (28:463)
                        left: 18*fem,
                        top: 25*fem,
                        child: Align(
                          child: SizedBox(
                            width: 735*fem,
                            height: 259*fem,
                            child: Image.asset(
                              'assets/page-1/images/monthly-fill-VCq.png',
                              width: 735*fem,
                              height: 259*fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // monthlydotGpu (28:464)
                        left: 14*fem,
                        top: 0*fem,
                        child: Container(
                          width: 743*fem,
                          height: 215*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // ellipse8kzy (28:465)
                                left: 0*fem,
                                top: 180*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse94Ey (28:466)
                                left: 19*fem,
                                top: 193*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse10xbF (28:467)
                                left: 34*fem,
                                top: 207*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse1148V (28:468)
                                left: 57*fem,
                                top: 88*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse12mob (28:469)
                                left: 76*fem,
                                top: 141*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse13tdK (28:470)
                                left: 95*fem,
                                top: 96*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse14C8D (28:471)
                                left: 115*fem,
                                top: 94*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse15W8u (28:472)
                                left: 134*fem,
                                top: 88*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse16p9b (28:473)
                                left: 153*fem,
                                top: 67*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse17vCd (28:474)
                                left: 176*fem,
                                top: 71*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse1832M (28:475)
                                left: 200*fem,
                                top: 92*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse19khT (28:476)
                                left: 224*fem,
                                top: 92*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse20g5K (28:477)
                                left: 250*fem,
                                top: 148*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse21C3f (28:478)
                                left: 276*fem,
                                top: 125*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse22Wa9 (28:479)
                                left: 302*fem,
                                top: 66*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse2322h (28:480)
                                left: 328*fem,
                                top: 92*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse24YFw (28:481)
                                left: 354*fem,
                                top: 157*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse253Tb (28:482)
                                left: 380*fem,
                                top: 148*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // autogroupbp7oMjB (NvSvAmimRiPHBTSUtuBp7o)
                                left: 395*fem,
                                top: 0*fem,
                                child: Container(
                                  width: 28*fem,
                                  height: 31*fem,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Center(
                                        // Gr9 (28:498)
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                          child: Text(
                                            '100%',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Wanted Sans Variable',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2575*ffem/fem,
                                              color: const Color(0xff0061ff),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // elipseabw (28:483)
                                        width: 12*fem,
                                        height: 12*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/elipse-uhP.png',
                                          width: 12*fem,
                                          height: 12*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse27ueD (28:486)
                                left: 432*fem,
                                top: 58*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse28CtD (28:487)
                                left: 455*fem,
                                top: 50*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse29XQh (28:488)
                                left: 485*fem,
                                top: 92*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse30SGm (28:489)
                                left: 511*fem,
                                top: 129*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse31wzD (28:490)
                                left: 541*fem,
                                top: 154*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse32s7B (28:491)
                                left: 565*fem,
                                top: 172*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse33AMB (28:492)
                                left: 593*fem,
                                top: 162*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse34fYq (28:493)
                                left: 620*fem,
                                top: 144*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse35yJd (28:494)
                                left: 651*fem,
                                top: 80*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse36giq (28:495)
                                left: 678*fem,
                                top: 48*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse37zzR (28:496)
                                left: 703*fem,
                                top: 62*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse38urV (28:497)
                                left: 735*fem,
                                top: 131*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 8*fem,
                                    height: 8*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(4*fem),
                                        border: Border.all(color: const Color(0xff5d9bff)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
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
                Container(
                  // autogroup5vkfpyT (NvSveLmAMc2Ea7KyU15vKF)
                  margin: EdgeInsets.fromLTRB(22.5*fem, 0*fem, 21.5*fem, 12.5*fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        // 6g5 (28:418)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14.5*fem, 0*fem),
                          child: Text(
                            '1',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // 1o3 (28:419)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14.5*fem, 0*fem),
                          child: Text(
                            '2',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // vQD (28:420)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                          child: Text(
                            '3',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // eLD (28:421)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.5*fem, 0*fem),
                          child: Text(
                            '4',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // Zi5 (28:422)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                          child: Text(
                            '5',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // Vbj (28:423)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.5*fem, 0*fem),
                          child: Text(
                            '6',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // REV (28:424)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.5*fem, 0*fem),
                          child: Text(
                            '7',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // M89 (28:425)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                          child: Text(
                            '8',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // UTf (28:426)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16.5*fem, 0*fem),
                          child: Text(
                            '9',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // PqX (28:427)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16.5*fem, 0*fem),
                          child: Text(
                            '10',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // KUH (28:428)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                          child: Text(
                            '11',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // qSd (28:429)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 17.5*fem, 0*fem),
                          child: Text(
                            '12',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // m5P (28:430)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
                          child: Text(
                            '13',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // Vn5 (28:431)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
                          child: Text(
                            '14',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // 2GD (28:432)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18.5*fem, 0*fem),
                          child: Text(
                            '15',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // x9s (28:433)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
                          child: Text(
                            '16',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // GwF (28:434)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 17.5*fem, 0*fem),
                          child: Text(
                            '17',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // C4D (28:435)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 17.5*fem, 0*fem),
                          child: Text(
                            '18',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // uzD (28:436)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18.5*fem, 0*fem),
                          child: Text(
                            '19',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // SUM (28:437)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 0*fem),
                          child: Text(
                            '20',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // xBo (28:438)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18.5*fem, 0*fem),
                          child: Text(
                            '21',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // pzh (28:439)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19.5*fem, 0*fem),
                          child: Text(
                            '22',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // tzZ (28:440)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                          child: Text(
                            '23',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // D1F (28:441)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                          child: Text(
                            '24',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // vgM (28:442)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                          child: Text(
                            '25',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // r4D (28:443)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19.5*fem, 0*fem),
                          child: Text(
                            '26',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // xd3 (28:444)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 0*fem),
                          child: Text(
                            '27',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // Vcy (28:445)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19.5*fem, 0*fem),
                          child: Text(
                            '28',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // pv9 (28:446)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                          child: Text(
                            '29',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // ZMw (28:447)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                          child: Text(
                            '30',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 8*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        // sNd (28:448)
                        child: Text(
                          '31',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Wanted Sans Variable',
                            fontSize: 8*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // thistableistheaveragevalueplea (28:417)
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 335*fem, 0*fem),
                  constraints: BoxConstraints (
                    maxWidth: 407*fem,
                  ),
                  child: Text(
                    '※ This table is the average value.\n    Please select Daily/Weekly if you want specific figures for each exercise part.',
                    style: SafeGoogleFont (
                      'Wanted Sans Variable',
                      fontSize: 12*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.5*ffem/fem,
                      letterSpacing: 0.36*fem,
                      color: const Color(0xff0061ff),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            // group285Do (28:502)
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
                  // doctorsfeedbackjJM (28:505)
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
                  // image13RS5 (28:504)
                  width: 314*fem,
                  height: 270*fem,
                  child: Image.asset(
                    'assets/page-1/images/image-13-ea9.png',
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