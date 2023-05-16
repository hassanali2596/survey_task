import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'constants/appConstants.dart';


TargetPlatform? platform ;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = new MyHttpOverrides();

  // await Firebase.initializeApp();
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  // await Firebase.initializeApp();

  // await Hive.initFlutter();
  // Hive.registerAdapter(PersonAdapter()); //for objects
  // await Hive.openBox(INSPECTION_BOX);
  await FlutterDownloader.initialize(
      debug: true, // optional: set to false to disable printing logs to console (default: true)
      ignoreSsl: true // option: set to false to disable working with http links (default: false)
  );
  runZonedGuarded(() {
    // SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight])
    //     .then((_) async {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown])
        .then((_) async {
      runApp(Phoenix(
          child:MyApp()));
      // initWorkM();
    });
  }, (error, stackTrace) {
    print('runZonedGuarded: Caught error in my root zone.');
    // FirebaseCrashlytics.instance.recordError(error, stackTrace);
  });
}


class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}