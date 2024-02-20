import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:myapp/utils/utils.dart';

class InstructionPopUp extends StatelessWidget {
    final VoidCallback onClicked;

  const InstructionPopUp({required this.onClicked, super.key});


  @override
  Widget build(BuildContext context) {
    double baseWidth = 1366;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 1024*fem,
            child: Stack(
              children: [
                /*
                Positioned(
                  // chestt6R (0:555)
                  left: 644.5*fem,
                  top: 25.5*fem,
                  child: Center(
                    child: Align(
                      child: SizedBox(
                        width: 75*fem,
                        height: 38*fem,
                        child: Text(
                          'Chest',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Wanted Sans Variable',
                            fontSize: 30*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2575*ffem/fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // unionXfB (0:556)
                  left: 505.5*fem,
                  top: 195.5*fem,
                  child: Align(
                    child: SizedBox(
                      width: 374.97*fem,
                      height: 606*fem,
                      child: Image.asset(
                        'assets/page-1/images/union-LUD.png',
                        width: 374.97*fem,
                        height: 606*fem,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // rectangle837j (0:567)
                  left: 364*fem,
                  top: 891*fem,
                  child: Align(
                    child: SizedBox(
                      width: 670*fem,
                      height: 11*fem,
                      child: Container(
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(100*fem),
                          color: Color(0xffe9e9e9),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // finishedkH3 (0:568)
                  left: 1064.5*fem,
                  top: 883*fem,
                  child: Center(
                    child: Align(
                      child: SizedBox(
                        width: 85*fem,
                        height: 26*fem,
                        child: Text(
                          'FINISHED',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Wanted Sans Variable',
                            fontSize: 20*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2575*ffem/fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
               
                Positioned(
                  // SQm (0:569)
                  left: 217.0059814453*fem,
                  top: 844.0144042969*fem,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(36.5*fem, 31.73*fem, 30.11*fem, 31.79*fem),
                    width: 103.02*fem,
                    height: 103.02*fem,
                    decoration: BoxDecoration (
                      image: DecorationImage (
                        fit: BoxFit.cover,
                        image: AssetImage (
                          'assets/page-1/images/vector-Xg1.png',
                        ),
                      ),
                    ),
                    child: Center(
                      // vectorKUZ (0:571)
                      child: SizedBox(
                        width: 36.41*fem,
                        height: 39.5*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-qob.png',
                          width: 36.41*fem,
                          height: 39.5*fem,
                        ),
                      ),
                    ),
                  ),
                ),
                
                
                Positioned(
                  // rectangle9T4y (0:572)
                  left: 364*fem,
                  top: 891*fem,
                  child: Align(
                    child: SizedBox(
                      width: 11*fem,
                      height: 11*fem,
                      child: Container(
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(100*fem),
                          color: Color(0xff0061ff),
                        ),
                      ),
                    ),
                  ),
                ),
                */
                Positioned(
                  // rectangle7Z81 (0:573)
                  left: 0*fem,
                  top: 0*fem,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur (
                        sigmaX: 5*fem,
                        sigmaY: 5*fem,
                      ),
                      child: Align(
                        child: SizedBox(
                          width: 1366*fem,
                          height: 1025*fem,
                          child: Container(
                            decoration: const BoxDecoration (
                              color: Color(0x66000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // rectangle47ddf (0:574)
                  left: 219*fem,
                  top: 77*fem,
                  child: Align(
                    child: SizedBox(
                      width: 928*fem,
                      height: 724*fem,
                      child: Container(
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(30*fem),
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                //Button
                Positioned(
                  // frame29M7 (0:575)
                  left: 506.9999961534*fem,
                  top: 850.9999847447*fem,
                  child: GestureDetector(
                    onTap: ()async{
                      Navigator.of(context);
                      onClicked();
                    }
                  
                    ,
                    child: Container(
                      width: 349*fem,
                      height: 88*fem,
                      decoration: BoxDecoration (
                        color: const Color(0xff0061ff),
                        borderRadius: BorderRadius.circular(20*fem),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x4c000000),
                            offset: Offset(0*fem, 4*fem),
                            blurRadius: 7.5*fem,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Center(
                          child: Text(
                            'No Problem',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 40*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                /*
                Positioned(
                  // unionm7b (0:577)
                  left: 30*fem,
                  top: 26*fem,
                  child: Align(
                    child: SizedBox(
                      width: 20.61*fem,
                      height: 40*fem,
                      child: Image.asset(
                        'assets/page-1/images/union-52V.png',
                        width: 20.61*fem,
                        height: 40*fem,
                      ),
                    ),
                  ),
                ),
                */
                //TITLE
                Positioned(
                  // chestGa9 (0:580)
                  left: 613*fem,
                  top: 163.5*fem,
                  child: Align(
                    child: SizedBox(
                      width: 124*fem,
                      height: 63*fem,
                      child: Text(
                        'Chest',
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
                ),
               
                //CHECK ICONS & INSTRUCTION1
                Positioned(
                  // group23ZZF (0:581)
                  left: 267*fem,
                  top: 404*fem,
                  child: Container(
                    //width: 828*fem,
                    height: 302*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //CHECK ICONS
                        Container(
                          // autogroupbpqjtLd (NvSUCrKLo7F5s8mfuKbpqj)
                          margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 19*fem, 0*fem),
                          width: 52.01*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // Cs7 (0:583)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 45*fem),
                                padding: EdgeInsets.fromLTRB(10.54*fem, 16.62*fem, 10.68*fem, 13.21*fem),
                                width: double.infinity,
                                decoration: const BoxDecoration (
                                  image: DecorationImage (
                                    fit: BoxFit.cover,
                                    image: AssetImage (
                                      'assets/page-1/images/vector-mFb.png',
                                    ),
                                  ),
                                ),
                                child: Center(
                                  // vectorJfF (0:585)
                                  child: SizedBox(
                                    width: 30.78*fem,
                                    height: 22.16*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/vector-NXP.png',
                                      width: 30.78*fem,
                                      height: 22.16*fem,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // dhX (0:586)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 44*fem),
                                padding: EdgeInsets.fromLTRB(10.54*fem, 16.62*fem, 10.68*fem, 13.21*fem),
                                width: double.infinity,
                                decoration: const BoxDecoration (
                                  image: DecorationImage (
                                    fit: BoxFit.cover,
                                    image: AssetImage (
                                      'assets/page-1/images/vector-mFb.png',
                                    ),
                                  ),
                                ),
                                child: Center(
                                  // vectorLrq (0:588)
                                  child: SizedBox(
                                    width: 30.78*fem,
                                    height: 22.16*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/vector-NXP.png',
                                      width: 30.78*fem,
                                      height: 22.16*fem,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // fu7 (0:589)
                                padding: EdgeInsets.fromLTRB(10.54*fem, 16.62*fem, 10.68*fem, 13.21*fem),
                                width: double.infinity,
                                decoration: const BoxDecoration (
                                  image: DecorationImage (
                                    fit: BoxFit.cover,
                                    image: AssetImage (
                                      'assets/page-1/images/vector-bCH.png',
                                    ),
                                  ),
                                ),
                                child: Center(
                                  // vectorCe9 (0:591)
                                  child: SizedBox(
                                    width: 30.78*fem,
                                    height: 22.16*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/vector-KRX.png',
                                      width: 30.78*fem,
                                      height: 22.16*fem,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        //INSTRUCTION1
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 19*fem, 0*fem),

                          // situprightwithyourupperbodystr (0:582)
                          constraints: BoxConstraints (
                            maxWidth: 716*fem,
                          ),

                          child: Text(
                            'Sit upright with your upper body straight.\n\nMake sure to exercise with your breathing.\n\nDo not hold back the pain,\nbut exercise to a pain-free extent.',
                            style: SafeGoogleFont (
                              'Wanted Sans Variable',
                              fontSize: 38*ffem,
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
                //DESCRIPTION
                Positioned(
                  // group24nsF (0:592)
                  left: 415*fem,
                  top: 254*fem,
                  child: Container(
                    width: 537*fem,
                    height: 87*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(20*fem),
                    ),
                    //DESCRIPTION WIDGET
                    child: Stack(
                      children: [
                        
                        Positioned(
                          // set8times3setsintotal7Pj (0:593)
                          left: 81*fem,
                          top: 24*fem,
                          child: Align(
                            //DISCRIPTION BOX
                            child: SizedBox(
                              width: 341*fem,
                              height: 38*fem,
                              //DESCRIPTION TEXT
                              child: Text(
                                '1 set, 8 times. 3 sets in total',
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
                        ),
                        //DESCRIPTION BOX BORDER
                        Positioned(
                          // rectangle48bph (0:594)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 537*fem,
                              height: 87*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(20*fem),
                                  border: Border.all(color: const Color(0x7f000000)),
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
        ],
      ),
    );
  }
}