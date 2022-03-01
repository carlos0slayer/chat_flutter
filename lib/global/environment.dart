import 'dart:io';

class Environment {
  static String apiUrl    = Platform.isAndroid ? 'https://f563-189-243-192-233.ngrok.io/api' : 'https://f563-189-243-192-233.ngrok.io/api';
  static String socketUrl = Platform.isAndroid ? 'https://f563-189-243-192-233.ngrok.io'     : 'https://f563-189-243-192-233.ngrok.io';
}

