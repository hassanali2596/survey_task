
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/appColors.dart';
import '../constants/decorations.dart';



class CommonTextFormField extends StatefulWidget {
  TextAlign? align;
  TextInputType? textInputType;
  double? fontSize;
  FontWeight? fontWeight;
  int? maxLines;
  Color? fillColor;
  Color? borderColor;
  FocusNode? focusNode;
  String? hint;
  String? initValue;
  Function(String val) ? onChanged;
  Function(String? val) ? onSaved;
  String? Function(String? val) ? validateFunc;
  Function()? onTap;
  Key? key;
  TextEditingController? controller;
  TextInputAction? textInputAction;
  TextStyle? labelStyle;
  Widget? prefixIcon,suffixIcon;
  bool? obscureText,readOnly;
  EdgeInsetsGeometry? contentPadding;

  CommonTextFormField({this.align, this.textInputType,
    this.fontSize, this.fontWeight, this.maxLines, this.fillColor,
    this.borderColor, this.focusNode, this.hint, this.initValue,
    this.onChanged, this.onSaved, this.validateFunc, this.onTap, this.key,
    this.controller, this.textInputAction, this.labelStyle, this.prefixIcon,
    this.suffixIcon, this.obscureText, this.readOnly, this.contentPadding}): super(key: key);

  @override
  State<CommonTextFormField> createState() => _CommonTextFormFieldState();
}

class _CommonTextFormFieldState extends State<CommonTextFormField> {

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: widget.textInputType ?? TextInputType.text,
        key: widget.key,
        initialValue: widget.initValue,
        textInputAction: widget.textInputAction ?? TextInputAction.next,
        controller: widget.controller,
        focusNode: widget.focusNode,
        textAlign: widget.align??TextAlign.start,

        obscureText: widget.obscureText ?? false,
        maxLines: widget.maxLines ?? 1,
        readOnly: widget.readOnly ?? false,
        style: widget.labelStyle??TextStyle(color: blackColor, fontSize: 18, fontWeight: FontWeight.bold),
        decoration: textFieldDecoration(
            prefixIcon: widget. prefixIcon,
            suffixIcon:  widget.suffixIcon,
            fillColor:  widget.fillColor!,
            borderColor:  widget.borderColor,
            radius: 10,
            borderWidth: 1,
            hintText:  widget.hint!,
            labelText:  widget.hint!,
            hintStyle:  widget.labelStyle??TextStyle(color: greyColorLogin, fontSize: 18,fontWeight: FontWeight.w300)
        ),
        onChanged: widget.onChanged,
        onSaved: widget.onSaved,
        // onTap: onTap!(),
        validator: widget.validateFunc
    );
  }
}


