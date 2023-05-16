
import 'package:flutter/material.dart';

class ApiResponse{
  int? statusCode;
  int? responseCode;
  bool? status;
  String? message;
  int? error;
  dynamic body;

  ApiResponse({this.statusCode,this.error,this.status, this.body, this.message,this.responseCode});
  


}