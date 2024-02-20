import 'package:camera/camera.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gif_view/gif_view.dart';
import 'package:intl/intl.dart';
import 'package:myapp/pages/exercise/popups/countdown_popup.dart';
import 'package:myapp/pages/exercise/popups/instruction_popup.dart';
import 'package:myapp/pages/exercise/popups/result_popup.dart';
import 'package:myapp/utils/utils.dart';

class WorkoutScreen2 extends StatefulWidget {
    const WorkoutScreen2({
      required this.exerciseName, required this.appUserId, required this.camera, Key? key}) : super(key: key);
    final List<CameraDescription> camera;
    final String appUserId;
    final String exerciseName;
  
  @override
  State<WorkoutScreen2> createState() => _WorkoutScreen2State();
}

class _WorkoutScreen2State extends State<WorkoutScreen2> {

  GifController controller = GifController();
  late CameraController cameraController;
  late Future<void> cameraValue;
  int loopCount = 0;
  bool isRecordingInProgress = false;Color recordingStatusColor = Colors.black;
  //WorkOutResult
  double score = 0;
  

  @override
  void initState(){
    super.initState();
    //INITIALIZE CAMERA CONTROLLER
    cameraController = CameraController(widget.camera[0], ResolutionPreset.max);
    cameraValue = cameraController.initialize();
    cameraController.prepareForVideoRecording();
    //SHOWINSTRUCTIONPOPUP
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await showInstructionPopup(context);
     });
    
    //LOOP GIF & STOPRECORDING
     controller = GifController(
      autoPlay: false,
      onFinish: () async {
        //CHANGE TO 
      if(loopCount < 8){
        loopCount++;
        controller.play();
      }else{
        //AFTER 24 LOOPS
        if (kDebugMode) {
          print(loopCount);
        }
        stopRecording();
      }

            },
      loop: false
    );
  }  

  //START PLAYING THE GIF
  void startGifAnimation(){
    controller.play();
  }

  //START RECORDING
  Future <void> startRecording()async{
    try{
      await cameraController.startVideoRecording();
      startGifAnimation();
      setState(() {
        isRecordingInProgress = true;
      });
    } catch(e){
      if (kDebugMode) {
        print("Error starting recording: $e");
      }
    }
  }

  //STOP RECORDING & CALL CALCULATERESULT
  Future<void> stopRecording()async{
    try{
      XFile video = await cameraController.stopVideoRecording();
      //FILE: BLOB URL
      final path = video.path;
      //final blob = html.Blob([video]);
      //final url = html.Url.createObjectUrlFromBlob(blob);
      if (kDebugMode) {
        print(path);
      }
      setState(() {
        isRecordingInProgress = false;
        if (kDebugMode) {
          print(isRecordingInProgress);
        }}); 

    //RUN CALCULATE RESULT 
      await calculateResult(video);

    }catch(e){
      print("ERROR stopping recording:$e");
    }
  }

  //INPUT VIDEO & OUTPUT RESULT & SAVE RESULT & SHOW RESULT
  Future<void> calculateResult(XFile video) async {
    //RUN MODEL
    //OUTPUT = SCORE
    const double score = 90;
    
    //SAVE FINAL SCORE
    await addScore(widget.appUserId, widget.exerciseName, score);
    
    //SHOW RESULT 
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResultPopup(
        appUserId: widget.appUserId,
        exerciseName: widget.exerciseName,
        result: score))
    );
  }

  //SHOW INSTRUCTION POPUP, SHOW COUNTDOWN POPUP onENDPOINT
    Future<void> showInstructionPopup(BuildContext context) async {
     await showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return  InstructionPopUp(onClicked: () async{
          Navigator.pop(context);
          await showCountdownPopup(context);
        }); // Make sure to use the correct constructor
      },
    );
  } 
   
    //SHOW COUNTDOWN POPUP METHOD
    Future<void> showCountdownPopup(BuildContext context) async {
    return await showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        //CALL STARTGIF
        return  CountDownPopUp(onCountdownComplete: startRecording,); // Make sure to use the correct constructor
      },
    );
  }
    
    //SHOW RESULTPOPUP METHOD
    Future <void> showresultPopup(double result) async {

     await  showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return  ResultPopup(result: result, appUserId: widget.appUserId, exerciseName: widget.exerciseName,);
         // Make sure to use the correct constructor
      },
    );

    
  }
  
  //UPLOAD SCORE METHOD
  Future<void> addScore(String appUserId, String exerciseName, double score) async{
    try{
      final formattedDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
      CollectionReference exerciseCollection = FirebaseFirestore.instance.collection("Exercise");
      DocumentReference userDocRef = exerciseCollection.doc(appUserId);
      CollectionReference exerciseNameCollection = userDocRef.collection(exerciseName);
      DocumentReference dateDocRef = exerciseNameCollection.doc(formattedDate);

      DocumentSnapshot dateDocSnapshot = await dateDocRef.get();
      if(dateDocSnapshot.exists){
        await dateDocRef.update({'score': FieldValue.arrayUnion([score])});

      }else{
              await dateDocRef.set({
                'date': formattedDate,
                'score':[score]

                });

      }

      if (kDebugMode) {
        print(score);
      }

    }catch(e){
      print("Error adding score to Firestore: $e");
    }
  }

  
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1366;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    final size = MediaQuery.of(context).size;
    final deviceRatio = size.width / size.height;
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Stack(
            fit: StackFit.expand,
            alignment: AlignmentDirectional.center,
            children: [
              //CAMERA 
           Container(
            width: 1366,
            //height:1200,
            child:  Transform.scale(
            scale: cameraController.value.aspectRatio / deviceRatio,
            child: AspectRatio(
                aspectRatio: cameraController.value.aspectRatio,
                child: CameraPreview(cameraController),
              ),
            )),
          
          //GIF
          if (widget.exerciseName.contains("Chest"))
          Opacity(
            opacity: 0.5,
            child:
            GifView.asset(
                      'page-1/images/testgif.gif',
                      width: 374.97*fem,
                      height: 606*fem,
                      controller: controller,
                      repeat: ImageRepeat.noRepeat,
                     ),),

          if (widget.exerciseName.contains("Arm"))
          Opacity(
            opacity: 0.5,
            child:
            GifView.asset('page-1/images/testgif.gif',
                      width: 374.97*fem,
                      height: 606*fem,
                      controller: controller,
                      repeat: ImageRepeat.noRepeat,
                     ),),

          if (widget.exerciseName.contains("Shoulder"))
          Opacity(
            opacity: 0.5,
            child:
            GifView.asset('page-1/images/testgif.gif',
                      width: 374.97*fem,
                      height: 606*fem,
                      controller: controller,
                      repeat: ImageRepeat.noRepeat,
                     ),), 
                    Container(
          //width: size.width,
          //height: size.height,
        decoration: const BoxDecoration (
        image: DecorationImage (
          fit: BoxFit.fill,
          image: AssetImage (
            "assets/page-1/images/exerciseframe.png",
          ),
        ),
      ),
          ),],
            ),
         //FRAME

        //TITLE FRAME
        Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Images
              Container(
                margin: EdgeInsets.fromLTRB(497*fem, 0*fem, 496*fem, 63.5*fem),
                padding: EdgeInsets.fromLTRB(25*fem, 11*fem, 25*fem, 14*fem),
                width: double.infinity,
                decoration: BoxDecoration (
                  color: const Color(0x7f000000),
                  borderRadius: BorderRadius.only (
                    bottomRight: Radius.circular(20*fem),
                    bottomLeft: Radius.circular(20*fem),
                  ),
                ),
                child: Align(
                  // group26meD (0:500)
                  alignment: Alignment.centerLeft,
                  child: 
                  //Left Border
                  SizedBox(
                    width: 101*fem,
                    height: 27*fem,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 162*fem, 0*fem),
                      child: Image.asset(
                        'assets/page-1/images/group-26-dQ9.png',
                        width: 101*fem,
                        height: 27*fem,
                      ),
                    ),
                  ),
                ),
              ),
          ],
          ),
        
        //BACK BUTTON & TITLE 
        Container(
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 616.5*fem, 14*fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //Back Button
                    Container(
                      alignment: Alignment.topLeft,
                      // unionUWh (0:495)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 593.89*fem, 0*fem),
                      width: 20.61*fem,
                      height: 40*fem,
                      child: const BackButton()
                    ),
                    //Title
                    Text(
                      'Chest',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Wanted Sans Variable',
                        fontSize: 30*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2575*ffem/fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
         //PLAYBUTTON
         
         Align(
          alignment: Alignment.bottomCenter,
           child: Container(
            padding:const EdgeInsets.only(bottom: 20),
                  //margin: EdgeInsets.fromLTRB(187.01*fem, 0*fem, 186.5*fem, 0*fem),
                  width: double.infinity,
                  height: 100,
                   //PLAYBACK BUTTONS ROW
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      //PlayButton
                      Container(
                        padding: EdgeInsets.fromLTRB(36.5*fem, 31.73*fem, 30.11*fem, 31.79*fem),
                        height: double.infinity,
                        decoration: const BoxDecoration (
                          image: DecorationImage (
                            fit: BoxFit.contain,
                            image: AssetImage (
                              'assets/page-1/images/vector-7p1.png',
                            ),
                          ),
                        ),
                        child: Center(
                          child: SizedBox(
                            width: 36.41*fem,
                            height: 39.5*fem,
                            child: GestureDetector(
                              onTap: (){
                                if (controller.status == GifStatus.playing){
                                  controller.pause();   
                                }else{
                                  controller.play();
                                }
                              },
                              child: Image.asset(
                                'assets/page-1/images/vector-xey.png',
                                width: 36.41*fem,
                                height: 39.5*fem,
                              ),
                            ),
                          ),
                        ),
                      ),
                      //Progress Indicator & Finished Text
                      Container(
                        // autogroupygqmMVw (NvSSpUTbxHZLJjaL3FYgQm)
                        //padding: EdgeInsets.fromLTRB(43.97*fem, 38.99*fem, 0*fem, 38.03*fem),
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //Text("${(controller.value * 100).toStringAsFixed(2)}%")
                            /*Container(
                              // autogroupp8pfUqT (NvSSjyb6dWLUGSXiBsP8PF)
                              margin: EdgeInsets.fromLTRB(0*fem, 8*fem, 30.5*fem, 7*fem),
                              width: 670*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: const Color(0xffe9e9e9),
                                borderRadius: BorderRadius.circular(100*fem),
                              ),
                              child: Align(
                                // rectangle9CWZ (0:491)
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  width: 255*fem,
                                  height: 11*fem,
                                  child: Container(
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(100*fem),
                                      color: const Color(0xff0061ff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            */
                            if(isRecordingInProgress)
                              const CircularProgressIndicator(),

                            GestureDetector(
                              onTap: (){
                                stopRecording();
                              },
                              child: Center(
                                // finishedtuB (0:490)
                                child: Text(
                                  'FINISHED',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Wanted Sans Variable',
                                    fontSize: 20*ffem,
                                    fontWeight: FontWeight.w700,
                                    height:1.25, 
                                    //1.2575*ffem/fem,
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
         ),       
        ],
      ),
    );
  }
}