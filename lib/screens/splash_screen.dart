import 'dart:async';
import 'dart:io';
import 'dart:isolate';
import 'package:HSB/screens/home_screen.dart';
import 'package:after_layout/after_layout.dart';

import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'dart:ui';

import '../constants/appColors.dart';
import '../constants/fontSize.dart';
import '../constants/imagesPaths.dart';
import '../helper/custom_text.dart';
import '../helper/helper.dart';
import '../localization/i18n.dart';
import '../main.dart';
import '../models/user.dart';
import '../providers/user_provider.dart';


class SplashScreen extends StatefulWidget {
  static const String routeName = "/splashScreen";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}


class SplashScreenState extends State<SplashScreen>
    with AfterLayoutMixin<SplashScreen> {


    final _scaffoldKey = GlobalKey<ScaffoldState>();
    ReceivePort port = ReceivePort();




    @override
  void initState() {

      super.initState();

  }


  @override
  Widget build(BuildContext context) {
    var screenWidth=MediaQuery.of(context).size.width;
    var screenHeight=MediaQuery.of(context).size.height;
    return AnnotatedRegion(
        value:  const SystemUiOverlayStyle(
        statusBarColor: whiteColor,
    statusBarIconBrightness: Brightness.dark),
    child: Scaffold (
      backgroundColor : whiteColor,
      body :Container(
          padding: EdgeInsets.all(40),
          alignment: AlignmentDirectional.center,
          child:

      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(LOGO,width: screenHeight>500?screenWidth*0.5:200,fit: BoxFit.fitWidth,),
          const SizedBox(height: 10,),
          customText(
            text: "يُسرةُ الحاج",
            textColor: main_color,
            fontSize: SIZE30,
            fontWeight: fontBold
          ),



        ],
      )
      ),
    ));
  }

  @override
  Future<void> afterFirstLayout(BuildContext context) async {

    try{

     Future.delayed(Duration(seconds: 3), () async {
       pushReplacementNamedRoute(context, HomeScreen.routeName);
      });
    }catch(e){
      if (kDebugMode) {
        print(e.toString());
      }
    }

  }
}

