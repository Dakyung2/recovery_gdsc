import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:myapp/components/buttons/go_back.dart';
import 'package:myapp/pages/exercise/popups/speed_popup.dart';
import 'package:myapp/pages/exercise/screens/workout_screen2.dart';
import 'package:myapp/utils/utils.dart';
import 'package:video_player/video_player.dart';

class WorkoutChestPlay1 extends StatefulWidget {
  final String appUserId;
  final String exerciseName;

  const WorkoutChestPlay1({
    required this.exerciseName,
    required this.appUserId,
    super.key});

  @override
  State<WorkoutChestPlay1> createState() => _WorkoutChestPlay1State();
}

class _WorkoutChestPlay1State extends State<WorkoutChestPlay1> {
  late Future<void> _initializeVideoPlayerFuture;
  late VideoPlayerController controller;
  late double speed;
  final GlobalKey<NavigatorState> _parentNavigatorKey = GlobalKey<NavigatorState>();
  late String selectedExercise;
  late String selectedExerciseName;

  @override
  void initState() {
    super.initState();
    selectedExercise = widget.exerciseName.toString();
    /*setState(() {
      // If the video is playing, pause it.
      if (controller.value.isPlaying) {
        controller.pause();
      } else {
        // If the video is paused, play it.
        controller.play();
      }
    });

     */
    if (selectedExercise.contains("Chest")){
         controller = VideoPlayerController.networkUrl(
    //CHEST INSTRUCTOR VIDEO URL
      Uri.parse("https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4")
    );
    selectedExerciseName = "Chest";
    controller.play();

    } else if (selectedExercise.contains("Arm")){
      //ARM INSTRUCTOR VIDEO URL
      controller = VideoPlayerController.networkUrl(
        Uri.parse(""));
      selectedExercise = "Arm";
      controller.play();
    }else{
      controller = VideoPlayerController.networkUrl(
    //Shoulder INSTRUCTOR VIDEO URL
      Uri.parse("https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4"));
      selectedExerciseName = "Shoulder";
      controller.play();
    }
    _initializeVideoPlayerFuture = controller.initialize();
    _initializeVideoPlayerFuture.then((_) {
    });
	//controller.play();
  }

  //SHOW SPEED POPUP METHOD
  Future<void> showSpeedPopup(BuildContext context) async {
        double? selectedSpeed = await showDialog<double>(
      context: context,
      builder: (BuildContext context) {
        return  SpeedPopup(parentNavigatorKey:_parentNavigatorKey, onSelectSpeed: (speed) => Navigator.of(context).pop(speed)); // Make sure to use the correct constructor
      },
    );
    if (selectedSpeed != null){
      controller.setPlaybackSpeed(selectedSpeed);
      Future.delayed(const Duration(seconds: 2), () {
      controller.play();
    });
    }
  }

  void playVideo(){
    controller.play();
    //controller.setPlaybackSpeed(1);
  }


    @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 1366;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      padding: EdgeInsets.fromLTRB(30*fem, 25*fem, 30*fem, 78.99*fem),
      decoration: const BoxDecoration (
        color: Color(0xfff5f5f5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 616*fem, 14*fem),
            width: double.infinity,
            //APPBAR
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //GO BACK
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  //GOBACKBUTTON
                  child: Container(
                    // union2EH (0:201)
                    margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 594.39*fem, 0*fem),
                    width: 20.61*fem,
                    height: 40*fem,
                    child: const GoBackButton()
                  ),
                ),
                //EXERCISENAME
                Center(
                  // chest7Wd (0:197)
                  child:
                  Text(selectedExercise,
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
          //VIDEOPLAYER
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 42*fem),
              //width: 928*fem,
              //height: 724*fem,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30*fem),
                child: 
                FutureBuilder(
                  future: _initializeVideoPlayerFuture,
                  builder: (context, snapshot){
                    if (snapshot.connectionState == ConnectionState.done){
                      return AspectRatio(
                        aspectRatio: controller.value.aspectRatio,
                        // Use the VideoPlayer widget to display the video.
                        child: VideoPlayer(controller),
                  );
                    }else{
                      return const Center(
                        child: CircularProgressIndicator()
                      );
                    }
                  },)
                /*Image.asset(
                  'assets/page-1/images/e204f703-2b18-4702-a5ba-ba94369e39fe-1-dnM.png',
                  fit: BoxFit.cover,
                ),*/
              ),
            ),
          ),
    //PLAYBACK CONTROLLERS
          Container(
            margin: EdgeInsets.fromLTRB(189*fem, 0*fem, 190*fem, 0*fem),
            width: double.infinity,
            height: 99.01*fem,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //replay button
                GestureDetector(
                  onTap:(){
                    if(!controller.value.isPlaying){
                      setState(() {
                        controller.initialize();
                      });
                    }},
                 
                  child: Container(
                    // p3f (0:204)
                    width: 99*fem,
                    height: 99.01*fem,
                    child: Image.asset(
                      'assets/page-1/images/-237.png',
                      width: 99*fem,
                      height: 99.01*fem,
                    ),
                  ),
                ),
                Container(
                  // autogroup62qz9Lq (8188tJ6Ds3TUnuKDmn62qz)
                  padding: EdgeInsets.fromLTRB(189*fem, 1*fem, 0*fem, 1.02*fem),
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Container(
                          // frame24To (0:199)
                          margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 193.01*fem, 5*fem),
                          width: 349*fem,
                          height: double.infinity,
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
                          //START TEXT
                          child: Center(
                            child: Text(
                              'START',
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
                        onTap: () async{
                            controller.pause();
                            await availableCameras().then((value) =>
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => WorkoutScreen2(
                                          exerciseName: widget.exerciseName,
                                          camera: value, appUserId: widget.appUserId,)
                                    ))
                            );

                            }
                            ),


                            GestureDetector(
                              onTap: (){
                                showSpeedPopup(context);
                                },
                                  child: Opacity(
                                    opacity: 0.7,
                                    child: Container(
                                      width: 96.99*fem,
                                      height: 97*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/-t3o.png',
                                        width: 96.99*fem,
                                        height: 97*fem,
                                      ),
                                    ),
                                  ),
                            ),],
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