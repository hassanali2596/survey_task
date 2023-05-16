import 'package:HSB/helper/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/appColors.dart';
import 'custom_progress_indicator.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final String ? fontFamily;
   Color? btnColor, textColor, borderColor;
  final double? btnWidth, borderWidth,borderRadius;
  final bool showLoading;
  final EdgeInsets? padding;


  CustomButton({ required this.onTap, this.btnColor, this.textColor,this.fontFamily, required this.text,this.borderColor,
    this.borderRadius,this.borderWidth,this.btnWidth, this.showLoading = false, this.padding});

  @override
  Widget build(BuildContext context) {
    if(btnColor == null)
      btnColor = main_color;
    if(textColor == null)
      textColor = whiteColor;
    if(borderColor == null)
      borderColor = btnColor;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: btnWidth == null ? double.infinity : btnWidth,
        padding: padding ?? EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: btnColor,
            borderRadius: BorderRadius.all(Radius.circular(borderRadius??24)),
            border: Border.all(width: borderWidth == null ? 1: borderWidth!, color: borderColor!)),
        child: Center(
          child: showLoading ?
          SizedBox(child: circularProgressIndicator, width: 24, height: 24,)
          :
         customText(text: text,fontSize: 20,textColor: textColor, fontWeight: FontWeight.w500),
          ),
        ),
    );
  }
}

