import 'dart:io';

const String APP_ID = "19f0140106c34bc48b10e18a40d5e1f7";

class Constants {
  // TODO: Replace this with your firebase project URL
  static const String firebaseProjectURL =
      'https://flutter-starter-93823.firebaseapp.com/';
  static const String androidMinimumVersion = "21";
  static const String AppName = "com.fluttensor.my_chat";
}

class NotificationConst {
  static const channelId = 'testNotifications';
  static const channelName = 'Test Notifications';
  static const channelDescription = 'Test Notification Channel';
}

String get host {
  if (Platform.isAndroid) {
    return '10.0.2.2';
  } else {
    return 'localhost';
  }
}
