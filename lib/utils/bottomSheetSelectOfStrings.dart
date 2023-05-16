import 'package:HSB/constants/appColors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/fontSize.dart';
import '../helper/custom_text.dart';
import '../providers/home_provider.dart';

void selectOfStringsBottomSheet(BuildContext context, List<String> models,
    String title, TextEditingController controller) {
  showModalBottomSheet<void>(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  color: Colors.white,
                  height: 48,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      customText(text: title,textColor: blackColor,fontSize: SIZE20),
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
                  child: ListView.builder(
                      padding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      shrinkWrap: false,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            controller.text=models[index];
                            Provider.of<HomeProvider>(context,listen: false).setSelectedSurveyType(models[index]);
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: customText(text: models[index],textColor: blackColor,fontSize: SIZE15),
                          ),
                        );
                      },
                      itemCount: models.length),
                )
              ],
            ),
          );
        });
      });
}