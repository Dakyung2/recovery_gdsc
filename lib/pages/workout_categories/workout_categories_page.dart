import 'package:flutter/material.dart';
import 'package:myapp/pages/exercise/screens/workout_chest_play1.dart';
import 'package:myapp/utils/utils.dart';

class WorkOutCategoriesPage extends StatefulWidget {
  final String appUserId;

  const WorkOutCategoriesPage({
    required this.appUserId,
    super.key});

  @override
  State<WorkOutCategoriesPage> createState() => _WorkOutCategoriesPageState();
}

class _WorkOutCategoriesPageState extends State<WorkOutCategoriesPage> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1366;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30*fem, 25*fem, 30*fem, 51*fem),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //AppBar
            Container(
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 524*fem, 14*fem),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        // NS1 (0:180)
                        margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 1*fem, 0*fem),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context);
                          },
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: const BackButton()
                        ),
                      ),
                    ],
                  ),

                  //Title
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Workout Categories',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Wanted Sans Variable',
                          fontSize: 30*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2575*ffem/fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
        
            //Body
            //CHEST
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  WorkoutChestPlay1(
                            exerciseName: "Chest",
                          appUserId: widget.appUserId,
                        )),
                      );},
                      //CHEST WIDGET BOX
                      child: Container(
                        margin: EdgeInsets.fromLTRB(189*fem, 0*fem, 189*fem, 24*fem),
                        padding: EdgeInsets.fromLTRB(58*fem, 19*fem, 161*fem, 0*fem),
                        width: double.infinity,
                        decoration: BoxDecoration (
                          color: const Color(0xffff5119),
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
                              // chestrVb (0:183)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 322*fem, 39.5*fem),
                              child: Text(
                                'Chest',
                                style: SafeGoogleFont (
                                  'Wanted Sans Variable',
                                  fontSize: 50*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2575*ffem/fem,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                            Opacity(
                              // Mx9 (0:191)
                              opacity: 0.2,
                              child: Container(
                                width: 263*fem,
                                height: 263*fem,
                                child: Image.asset(
                                  'assets/page-1/images/-UNZ.png',
                                  width: 263*fem,
                                  height: 263*fem,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  Container(
                // rtu (1:18)
                margin: EdgeInsets.fromLTRB(189*fem, 0*fem, 189*fem, 24*fem),
                padding: EdgeInsets.fromLTRB(58*fem, 16*fem, 126*fem, 0*fem),
                width: double.infinity,
                decoration: BoxDecoration (
                  color: const Color(0xffffb939),
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
                      // armVws (0:184)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 370*fem, 39.5*fem),
                      child: Text(
                        'Arm',
                        style: SafeGoogleFont (
                          'Wanted Sans Variable',
                          fontSize: 50*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2575*ffem/fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                    Opacity(
                      // Ao7 (0:187)
                      opacity: 0.2,
                      child: Container(
                        width: 282*fem,
                        height: 265*fem,
                        child: Image.asset(
                          'assets/page-1/images/-RXb.png',
                          width: 282*fem,
                          height: 265*fem,
                        ),
                      ),
                    ),
                  ],
                ),
                            ),
                            //SHOULDER
                            Container(
                // 4tV (1:19)
                margin: EdgeInsets.fromLTRB(189*fem, 0*fem, 189*fem, 0*fem),
                padding: EdgeInsets.fromLTRB(58*fem, 18*fem, 141*fem, 0*fem),
                width: double.infinity,
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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // shoulderrZT (0:185)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 244*fem, 39.5*fem),
                      child: Text(
                        'Shoulder',
                        style: SafeGoogleFont (
                          'Wanted Sans Variable',
                          fontSize: 50*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2575*ffem/fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                    Opacity(
                      // Uaq (0:194)
                      opacity: 0.2,
                      child: Container(
                        width: 283*fem,
                        height: 264*fem,
                        child: Image.asset(
                          'assets/page-1/images/-Ecd.png',
                          width: 283*fem,
                          height: 264*fem,
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
            //ARM
            ],
        ),
      ),
    );
  }
}