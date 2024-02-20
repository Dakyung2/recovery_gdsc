import 'package:flutter/material.dart';
import 'package:myapp/utils/utils.dart';

class BarLabels extends StatelessWidget {
  const BarLabels({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 1366;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    
    return Row(
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
                                   )
                            ;
  }
}