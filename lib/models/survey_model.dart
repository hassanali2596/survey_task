import 'dart:io';

import 'choices_model.dart';


class SurveyModel{
  File? image;
  String? title,date;
  String type="";
  List<ChoiceModel>? choices;
}