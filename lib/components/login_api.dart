import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myapp/pages/home/home_page.dart';

class GoogleSignInApi{
  static final _googleSignIn = GoogleSignIn(
    //ENTER CLIENT ID
    clientId: "",
  );
  //LOGIN METHODE with USER DATA 
  static Future<GoogleSignInAccount?> login(BuildContext context) async{
    try{
     final GoogleSignInAccount? user = await _googleSignIn.signIn();
       if (user == null){
    print("Failed");
  }else{
     Navigator.pushReplacement(
      context, 
      MaterialPageRoute(
        builder: (context) => const HomePage()
        )
        );
  }
  return user;
    }
catch(error){
  print("Error during Sign in");
  return null;
}
  } 
  

}