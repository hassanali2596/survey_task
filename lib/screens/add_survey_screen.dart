import 'dart:async';
import 'dart:io';
import 'dart:isolate';
import 'package:after_layout/after_layout.dart';

import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';

import 'dart:ui';

import '../constants/appColors.dart';
import '../constants/decorations.dart';
import '../constants/fontSize.dart';
import '../helper/custom_progress_indicator.dart';
import '../helper/custom_text.dart';
import '../helper/rounded_button.dart';
import '../localization/i18n.dart';
import '../providers/home_provider.dart';
import '../utils/DateFormatting.dart';
import '../utils/bottomSheetAddChoice.dart';
import '../utils/bottomSheetSelectOfStrings.dart';
import '../utils/custom_pickImage_dialog.dart';

class AddSurveyScreen extends StatefulWidget {
  static final String routeName = "/AddSurveyScreen";

  AddSurveyScreenState createState() => AddSurveyScreenState();
}

class AddSurveyScreenState extends State<AddSurveyScreen>
    with AfterLayoutMixin<AddSurveyScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  DateTime? _selectedDate;
  String _title="";
  late TextEditingController typeController,freeTextController;

  Future<void> _selectDate(BuildContext context) async {
    final now = DateTime.now();
    final tenDaysFromNow = now.add(Duration(days: 10));

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: now,
      lastDate: tenDaysFromNow,
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
        Provider.of<HomeProvider>(context,listen: false).surveyModelToFill.date=setDateDateTimeFormatYYYYMMDD(_selectedDate!);
      });
    }
  }
  @override
  void initState() {
    super.initState();
    typeController=TextEditingController();
    freeTextController=TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: Container(
            width: double.infinity,
            padding: EdgeInsets.all(15),
            child: Consumer<HomeProvider>(builder: (ctx, client, ch) {
          return ModalProgressHUD(
              progressIndicator: circularProgressIndicator,
              inAsyncCall: client.loading,
              child:SingleChildScrollView(child:  Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          maxLines: 1,
                          decoration: textFieldDecoration(
                              labelText:
                              S.of(context)!.title,
                              hintText:
                              S.of(context)!.title,
                              radius: 25,
                              borderColor: BORDER_SIDE_COLOR,
                              borderWidth: 1,
                              alignLabelWithHint: true,
                              contentPadding: EdgeInsets.all(10)
                            // hintStyle: _mainActivityFocus.hasFocus
                            //     ? blue_1
                            //     : grey14,
                          ),
                          onChanged: (val) {},
                          onSaved: (val) {
                            client.surveyModelToFill.title=val??"";
                          },
                          onFieldSubmitted: (v) {
                            //  FocusScope.of(context).requestFocus(_areaFoucs);
                            FocusScope.of(context).unfocus();
                          },
                          validator: (value) {

                            return null;
                          },
                        ),

                        SizedBox(
                          height: 18,
                        ),
                        Stack(children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 132,
                                    height: 132,
                                    color: color_gray_1,
                                    child: GestureDetector(
                                      child: (client.surveyModelToFill.image != null)
                                          ? Image.file(
                                              client.surveyModelToFill.image!,
                                              fit: BoxFit.cover,
                                              errorBuilder:
                                                  (context, hfhh, hfjfj) {
                                                return Icon(
                                                  Icons.image,
                                                  size: 100,
                                                );
                                              },
                                            )
                                          : Icon(
                                              Icons.image,
                                              size: 100,
                                            ),
                                      onTap: () {
                                        // showDialog(context: context, builder: (BuildContext context) =>dialogImageView(
                                        //     imageType: "memory",
                                        //     image: item.file
                                        // ));
                                      },
                                    )),
                                SizedBox(
                                  height: 15,
                                ),
                              ]),
                          Container(
                              margin: EdgeInsets.all(15),
                              child: InkWell(
                                child: CircleAvatar(
                                  child: Icon(
                                    Icons.edit,
                                    size: 20,
                                    color: greyColor,
                                  ),
                                  backgroundColor: whiteColor,
                                  radius: 17,
                                ),
                                onTap: () {
                                  selectFile(context);
                                },
                              ))
                        ]),
                        SizedBox(height: 20,),
                        Text(
                          'Selected Date:',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          _selectedDate == null ? 'None' : setDateDateTimeFormatYYYYMMDD(_selectedDate!),
                          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 16.0),
                        RoundedButton(
                          btnHeight: 45,
                          btnWidth: 140,

                          onTap: () {
                            _selectDate(context);
                          },
                          padding: 0,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          btnColor: main_color,
                          text: ('Select a Date'),
                          borderColor: whiteColor,
                          textColor: whiteColor,
                        ),
                        SizedBox(height: 16.0),
                        InkWell(
                          onTap: () {
                            FocusScope.of(context).unfocus();
                            selectOfStringsBottomSheet(context,client.surveyTypes,"types",typeController);
                          },
                          child: TextFormField(
                            enabled: false,
                            controller: typeController,
                            keyboardType: TextInputType.text,
                            textInputAction:
                            TextInputAction.done,
                            maxLines: 1,
                            decoration: textFieldDecoration(
                                labelText: "Type",
                                hintText: "Type",
                                radius: 25,
                                borderColor: BORDER_SIDE_COLOR,
                                borderWidth: 1,
                                alignLabelWithHint: true,
                                contentPadding:
                                EdgeInsets.all(10)
                              // hintStyle: _mainActivityFocus.hasFocus
                              //     ? blue_1
                              //     : grey14,
                            ),
                            onChanged: (val) {},
                            onFieldSubmitted: (v) {
                              //  FocusScope.of(context).requestFocus(_areaFoucs);
                            },
                            validator: (value) {
                              /*  if (value.isEmpty) {
                                  return S.of(context).select_district;
                                }*/
                              return null;
                            },
                          ),
                        ),
                        if((client.surveyModelToFill.type.isNotEmpty)&&client.surveyModelToFill.type!="freeText")
                          Column(children: [
                            SizedBox(height: 30,),
                            if(client.surveyModelToFill.choices!=null)
                            ListView.builder(
                                padding:
                                EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                itemCount: client.surveyModelToFill.choices!.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return customText(
                                    text: client.surveyModelToFill.choices![index].value,
                                    fontSize: SIZE14,
                                    textColor: blackColor,
                                    lineesSpace: 1.7
                                  );}),

                            RoundedButton(
                              btnHeight: 45,
                              btnWidth: 140,

                              onTap: () {
                                addChoicesBottomSheet(context,"Add Choice",freeTextController);
                              },
                              padding: 0,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              btnColor: main_color,
                              text: "Add Choice",
                              borderColor: whiteColor,
                              textColor: whiteColor,
                            ),
                          ],),

                        SizedBox(height: 30,),
                        RoundedButton(
                          btnHeight: 45,
                          btnWidth: 140,

                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              // pushNamedRoute(context, AddNewViolationScreen2.routeName);
                             client.addSurveyToList();
                             Navigator.pop(context);
                            }
                          },
                          padding: 0,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          btnColor: main_color,
                          text: (S.of(context)!.save),
                          borderColor: whiteColor,
                          textColor: whiteColor,
                        ),
                      ],
                    ),
                  )
                ],
              )));
        })));
  }

  @override
  Future<void> afterFirstLayout(BuildContext context) async {}
}
