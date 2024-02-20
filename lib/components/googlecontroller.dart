import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myapp/components/constants.dart';


class GoogleController extends GetxController {
 // Rx<pageState> status = pageState.initial.obs;
  late GoogleSignIn _googleSignIn;

  void initAuth() {
    final String googleClientId = GoogleClientID();
    // this is because we only need to config the `clientId` for web app,
    // android and ios are configured in their specific config files 
    if (googleClientId == '') {
      _googleSignIn = GoogleSignIn(serverClientId: AppKey.googleServerClientId);
    } else {
      _googleSignIn = GoogleSignIn(
        serverClientId: AppKey.googleServerClientId,
        clientId: googleClientId,
      );
    }
  }

  void authWithGoogle({
    required bool isSignIn,
  }) async {
    //status(pageState.loading);
    try {

      await _googleSignIn.signOut();

      GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      GoogleSignInAuthentication? googleAuth = await googleSignInAccount!.authentication;
      if (googleSignInAccount.serverAuthCode != null && googleSignInAccount.serverAuthCode!.isNotEmpty) {
        print(googleAuth.idToken.toString());
        print(googleSignInAccount.email);
        print(googleSignInAccount.displayName);
        // TODO: here you can send the login request to your server's API
        // NOTE: you only need to send the `_googleAuth.idToken.toString()`
        await _googleSignIn.signOut();
        //status(pageState.loaded);
      } else {
        //status(pageState.error);
      }
        } catch (e) {
      //status(pageState.error);
    }
  }}
