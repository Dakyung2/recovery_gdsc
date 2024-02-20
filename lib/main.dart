import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pages/auth/login_page.dart';
import 'package:myapp/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'components/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

List<CameraDescription> cameras =[];

Future main()async
{
  WidgetsFlutterBinding.ensureInitialized();
  //await FirebaseAuth.instance.useAuthEmulator('localhost', 8080);
  try{
    cameras = await availableCameras();
  }on CameraException catch(e){
    if (kDebugMode) {
      print(e);
    }
  }
  if (kIsWeb){
    await Firebase.initializeApp(
      options: const FirebaseOptions(
            apiKey: "AIzaSyCAB0kBnba9XsCtWDuqZRFagy6MGAr8awI",
            authDomain: "recoverybodystore.firebaseapp.com",
            databaseURL: "https://recoverybodystore-default-rtdb.asia-southeast1.firebasedatabase.app",
            projectId: "recoverybodystore",
            storageBucket: "recoverybodystore.appspot.com",
            messagingSenderId: "812183167869",
            appId: "1:812183167869:web:5ea2516c6fed43f9b82214",
            measurementId: "G-DXJFSX2V0Z"

      )
    );

  }else{
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
 
  runApp( MyApp(cameras: cameras));}

class MyApp extends StatelessWidget {
  const MyApp({required this.cameras, Key? key}): super(key: key);
  final List<CameraDescription> cameras;

	@override
	Widget build(BuildContext context) {
	return MaterialApp(
		//title: 'Flutter',
		debugShowCheckedModeBanner: false,
		scrollBehavior: MyCustomScrollBehavior(),
		theme: ThemeData(
  
		primarySwatch: Colors.blue,
    ),
		home: const LoginPage()
	);
	}
}
