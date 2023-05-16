import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/appColors.dart';
import '../constants/decorations.dart';
import '../constants/fontSize.dart';
import '../helper/custom_text.dart';
import '../helper/rounded_button.dart';
import '../localization/i18n.dart';
import '../providers/home_provider.dart';

void addChoicesBottomSheet(BuildContext context,
    String title, TextEditingController controller) {
  showModalBottomSheet<void>(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  color: Colors.white,
                  height: 48,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      customText(text: title, fontSize: SIZE20),
                      SizedBox(
                        width: 32,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(
                            Icons.close,
                            color: Colors.black,
                          ))
                    ],
                  ),
                ),
                Expanded(
                  child:Column(children: [ TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    controller: controller,
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

                    },
                    onFieldSubmitted: (v) {
                      //  FocusScope.of(context).requestFocus(_areaFoucs);
                      FocusScope.of(context).unfocus();
                    },
                    validator: (value) {

                      return null;
                    },
                  ),
                    SizedBox(height: 30,),
                    RoundedButton(
                      btnHeight: 45,
                      btnWidth: 140,

                      onTap: () {
                        if(controller.text.isNotEmpty) {
                          Provider.of<HomeProvider>(context, listen: false)
                              .addChoiceToSurvey(controller.text);
                        }
                        controller.text="";
                        Navigator.pop(context);
                      },
                      padding: 0,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      btnColor: main_color,
                      text: (S.of(context)!.save),
                      borderColor: whiteColor,
                      textColor: whiteColor,
                    ),
                  ])
                )
              ],
            ),
          );
        });
      });
}