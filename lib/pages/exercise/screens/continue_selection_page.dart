import 'package:flutter/material.dart';
import 'package:myapp/pages/myactivity/myactivity.dart';
import 'package:myapp/pages/exercise/screens/workout_chest_play1.dart';
import 'package:myapp/utils/utils.dart';

class ContinuePopup extends StatefulWidget {
  final String exerciseName;
  final String appUserId;
  const ContinuePopup({
    required this.exerciseName,
    required this.appUserId, super.key});

  @override
  State<ContinuePopup> createState() => _ContinuePopupState();
}

class _ContinuePopupState extends State<ContinuePopup> {
  @override
  Widget build(BuildContext context) {
    //SIZEs
    double baseWidth = 1366;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        //BackButton
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){Navigator.of(context).pop();},
              child: const BackButton(),
            )
        ],
        ),
        
        //Check and messsage 
        Container(
  // rectangle47a5j (5:37)
          width:  double.infinity,
          height:  724*fem,
          decoration:  BoxDecoration (
            borderRadius:  BorderRadius.circular(30*fem),
            color:  const Color(0xffffffff),
          ),
          child: Column(
            children: [
              //Check Icon
              Container(
  // 43f (5:44)
                padding:  EdgeInsets.fromLTRB(51.5*fem, 81.2*fem, 52.17*fem, 64.55*fem),
                width:  double.infinity,
                height:  254*fem,
                //Circle Icon
               // decoration:  BoxDecoration (
                 // image:  DecorationImage (
                   // fit:  BoxFit.cover,
                    //image:  AssetImage (
                      //"page-1/images/vector-5G1.png"
                    //),
                  //),
                //),
                child:  
                //Check ICon
              Center(
                // vector7nd (5:46)
                child:  
              SizedBox(
                width:  150.35*fem,
                height:  108.26*fem,
                child:  
              Image.asset(
                "page-1/images/vector-5G1.png",
                width:  150.35*fem,
                height:  108.26*fem,
              ),
              ),
              ),
              ),
              Center(
  // ifyoucancontinueexercisingplea (5:43)
                child:  
              Container(
                width:  double.infinity,
                height:  180*fem,
                child:  
              RichText(
                textAlign:  TextAlign.center,
                text:  
              TextSpan(
                style:  SafeGoogleFont (
                  'Wanted Sans Variable',
                  fontSize:  50*ffem,
                  fontWeight:  FontWeight.w700,
                  height:  1.2575*ffem/fem,
                  color:  const Color(0xff000000),
                ),
                children:  [
              TextSpan(
                text:  'If you can continue exercising,\n',
                style:  SafeGoogleFont (
                  'Wanted Sans Variable',
                  fontSize:  50*ffem,
                  fontWeight:  FontWeight.w400,
                  height:  1.1625*ffem/fem,
                  color:  const Color(0xff000000),
                ),
              ),
              const TextSpan(
                text:  'Please press the button.',
              ),
                ],
              ),
              ),
              ),
              ),
            
            ]
            ),
        ),
        
        //Buttons
        Container(
          // group29Nvq (5:38)
          width:  double.infinity,
          decoration:  BoxDecoration (
            borderRadius:  BorderRadius.circular(20*fem),
          ),
          child:  
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:  CrossAxisAlignment.center,
          children:  [
        //I WANT TO STOP BUTTON
        Container(
          // frame3UDB (5:41)
          margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 72*fem, 0*fem),
          width:  349*fem,
          height:  82*fem,
          decoration:  BoxDecoration (
            color:  const Color(0xffffffff),
            borderRadius:  BorderRadius.circular(20*fem),
            boxShadow:  [
              BoxShadow(
                color:  const Color(0x4c000000),
                offset:  Offset(0*fem, 4*fem),
                blurRadius:  7.5*fem,
              ),
            ],
          ),
          child:  
        Center(
          child:  
        Center(
          child:  
        GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
            Navigator.push(context,
            MaterialPageRoute(
              builder: (context) => MyActivityPage(appUserId: widget.appUserId,) ));
          },
          //I WANT TO STOP TEXT
          child: Text(
            'I want to stop',
            textAlign:  TextAlign.center,
            style:  SafeGoogleFont (
              'Wanted Sans Variable',
              fontSize:  35*ffem,
              fontWeight:  FontWeight.w700,
              height:  1.2575*ffem/fem,
              color:  const Color(0xff0061ff),
            ),
          ),
        ),
        ),
        ),
        ),
        //I CAN DO MORE BUTTON
        GestureDetector(
          onTap: () {
            Navigator.push
            (context, 
            MaterialPageRoute(
              builder: (context) => WorkoutChestPlay1(
                
                exerciseName: widget.exerciseName,
                appUserId: widget.appUserId,)));
            
          },
          child: Container(
            // frame2e1B (5:39)
            margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
            width:  349*fem,
            height:  82*fem,
            decoration:  BoxDecoration (
              color:  const Color(0xff0061ff),
              borderRadius:  BorderRadius.circular(20*fem),
              boxShadow:  [
                BoxShadow(
                  color:  const Color(0x4c000000),
                  offset:  Offset(0*fem, 4*fem),
                  blurRadius:  7.5*fem,
                ),
              ],
            ),
            child:  
          Center(
            child:  
          Center(
            child:  
          Text(
            'I can do more',
            textAlign:  TextAlign.center,
            style:  SafeGoogleFont (
              'Wanted Sans Variable',
              fontSize:  35*ffem,
              fontWeight:  FontWeight.w700,
              height:  1.2575*ffem/fem,
              color:  const Color(0xffffffff),
            ),
          ),
          ),
          ),
          ),
        ),
          ],
        ),
        ),

        


      ],
    );
    }
}