import 'dart:async';
import 'dart:io';
import 'dart:isolate';
import 'package:after_layout/after_layout.dart';



import 'package:flutter/material.dart';

import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';

import 'dart:ui';

import '../constants/appColors.dart';
import '../constants/fontSize.dart';
import '../helper/custom_progress_indicator.dart';
import '../helper/custom_text.dart';
import '../helper/helper.dart';
import '../localization/i18n.dart';
import '../providers/home_provider.dart';
import '../providers/user_provider.dart';
import 'add_survey_screen.dart';




class HomeScreen extends StatefulWidget {
  static final String routeName = "/HomeScreen";

  HomeScreenState createState() => HomeScreenState();
}


class HomeScreenState extends State<HomeScreen>
    with AfterLayoutMixin<HomeScreen> {


    final _scaffoldKey = GlobalKey<ScaffoldState>();
    ReceivePort port = ReceivePort();




    @override
  void initState() {

      super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            pushNamedRoute(context, AddSurveyScreen.routeName);
          },
          child: Icon(Icons.add),
        ),
        body: Container (
          color: Colors.white,
          padding: EdgeInsets.all(20),
          child: Consumer<HomeProvider>(builder: (ctx, client, ch) {
    return ModalProgressHUD(
    progressIndicator: circularProgressIndicator,
    inAsyncCall: client.loading,
    child: Column(children: [
      SizedBox(height: 15,),
      Row(
          children: [customText(
          text: S.of(context)!.surveys,
          fontSize: SIZE20,
          textColor: blackColor,
          lineesSpace: 1.7
      ),
            Spacer(),
            customText(
            text: (Provider.of<UserProvider>(context, listen: false).locale=="ar")
                ? S.of(context)!.english:S.of(context)!.arabic,
            fontSize: SIZE20,
            textColor: blackColor,
            lineesSpace: 1.7,
              onTap: () async {
              print("clii");
              if(Provider.of<UserProvider>(context, listen: false).locale=="ar") {
                bool success = await Provider.of<UserProvider>(
                    context, listen: false)
                    .changeLanguage("en");
                // if (success) Phoenix.rebirth(context);
              }
              else{
                bool success = await Provider.of<UserProvider>(
                    context, listen: false)
                    .changeLanguage("ar");
                // if (success) Phoenix.rebirth(context);
              }

              }
            ),
      ]),
    SingleChildScrollView(child:  ListView.builder(
              padding:
              EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: client.surveyList.length,
              itemBuilder: (BuildContext context, int index) {
                return customText(
                    text: client.surveyList[index].title!,
                    fontSize: SIZE14,
                    textColor: blackColor,
                    lineesSpace: 1.7
                );}),
              ),
        ]));}))
      );
  }

  @override
  Future<void> afterFirstLayout(BuildContext context) async {


  }
}

