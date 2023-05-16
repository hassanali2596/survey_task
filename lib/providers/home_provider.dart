

import 'dart:io';


import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

import '../models/choices_model.dart';
import '../models/survey_model.dart';

class HomeProvider with ChangeNotifier {
  bool loading = false;
  bool offline = false;

  SurveyModel surveyModelToFill=SurveyModel();
  List<SurveyModel> surveyList=[];
  List<String> surveyTypes=["freeText","singleChoice","multipleChoice",];

  setSurveyImage(XFile file){
    surveyModelToFill.image=File(file.path);
    notifyListeners();
  }
  setSelectedSurveyType(String type){
    surveyModelToFill.type=type;
    notifyListeners();
  }
  addChoiceToSurvey(String value){
    if(surveyModelToFill.choices==null){
      surveyModelToFill.choices=[];
    }
    surveyModelToFill.choices!.add(ChoiceModel(value: value));
    notifyListeners();
  }
  addSurveyToList(){
    surveyList.add(surveyModelToFill);
    surveyModelToFill=SurveyModel();
    notifyListeners();
  }

}