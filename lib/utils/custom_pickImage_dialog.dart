import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../constants/appColors.dart';
import '../constants/fontSize.dart';
import '../helper/custom_text.dart';
import '../localization/i18n.dart';
import '../providers/home_provider.dart';

void selectFile(BuildContext context) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      enableDrag: true,
      isDismissible: true,
      context: context,
      builder: (context) {
        return new Container(
            height: 230,
            color: Colors.transparent,
            //could change this to Color(0xFF737373),
            //so you don't have to change MaterialApp canvasColor
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                customText(text:S.of(context)!.addImage,
                    textColor: greyColor,
                    fontSize: SIZE16,
                    fontWeight: FontWeight.bold),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () async {
                        var file=await takePhoto(2);
                        if(file!=null) {
                          Provider.of<HomeProvider>(context,listen: false).setSurveyImage(file);
                        }
                        Navigator.pop(context);
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        elevation: 10,
                        child: Container(
                            height: 100,
                            width: 100,
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: [

                                Icon(
                                  Icons.photo,
                                  size: 50,
                                  color: greyColor,
                                ),
                                customText(text:S.of(context)!.gallery,
                                  textColor: greyColor,
                                  fontSize: SIZE16,
                                ),
                              ],
                            )),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        var file=await takePhoto(1);
                        if(file!=null) {
                          Provider.of<HomeProvider>(context,listen: false).setSurveyImage(file);
                        }
                        Navigator.pop(context);

                        // Navigator.pop(context);
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        elevation: 10,
                        child: Container(
                            height: 100,
                            width: 100,
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  CupertinoIcons.photo_camera_solid,
                                  size: 50,
                                  color: greyColor,
                                ),
                                customText(text:S.of(context)!.camera,
                                  textColor: greyColor,
                                  fontSize: SIZE16,
                                ),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 15,
                ),
              ],
            ));
      });
}
final picker = ImagePicker();
Future<XFile?> takePhoto(int imageSource) async {
  final pickedFile = await picker.pickImage(
      source: imageSource == 1 ? ImageSource.camera : ImageSource.gallery,
      imageQuality: 50);
  return pickedFile;
}
