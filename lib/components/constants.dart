import 'package:flutter/foundation.dart' show kIsWeb;



class AppKey{
  static const String googleServerClientId = '<your-server-clientID>.apps.googleusercontent.com';
}

const GOOGLE_CLIENT_ID_WEB = '<your-web-clientID>.apps.googleusercontent.com';

String GoogleClientID() {
  if (kIsWeb) {
    // running on the web!
    return GOOGLE_CLIENT_ID_WEB;
  }
  return '';
}