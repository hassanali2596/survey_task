import 'package:HSB/constants/appColors.dart';
import 'package:flutter/material.dart';

RoundedRectangleBorder roundedShape = RoundedRectangleBorder(
  borderRadius: new BorderRadius.circular(30.0),
);



InputDecoration textFieldDecoration(
    {String? hintText,
      String? labelText,
      Widget? prefixIcon,
      Widget? suffixIcon,
      double? borderWidth,
      double? radius,
      Color? textColor,
      Color? borderColor,
      Color? fillColor,
      bool? alignLabelWithHint,
      EdgeInsetsGeometry? contentPadding,
      TextStyle? hintStyle}) {
  return InputDecoration(
    fillColor: fillColor?? FIELDS_BACKGROUND_COLOR,
    filled: true,
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
    alignLabelWithHint: alignLabelWithHint??false ,
    hintText: hintText,
    labelText: (alignLabelWithHint??false)?labelText ?? hintText:null,
    hintStyle: hintStyle,
    labelStyle: hintStyle??TextStyle(color: greyColor),
    contentPadding: contentPadding??EdgeInsets.only(top: 16, bottom: 16, left: 12, right: 12),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(radius??24)),
      borderSide: BorderSide(width: borderWidth??2, color:  borderColor??FIELDS_BORDERS_COLOR),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(radius??24)),
      borderSide: BorderSide(width: borderWidth??2, color: borderColor??FIELDS_BORDERS_COLOR),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(radius??24)),
      borderSide: BorderSide(width: borderWidth??2, color: borderColor??FIELDS_BORDERS_COLOR),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(width: borderWidth??2, color: borderColor??FIELDS_BORDERS_COLOR),
    ),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius??24)),
        borderSide: BorderSide(color: Colors.red, width: borderWidth??2)),
    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius??24)),
        borderSide: BorderSide(
          color: Colors.red,
          width: borderWidth??2,
        )),
  );
}


