import 'dart:io';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:mime/mime.dart';
import 'package:url_launcher/url_launcher.dart';


Future<void> openLink(String webName) async {
  final Uri _url = Uri.parse(webName);


  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

Future<bool> isConnectedToInternet() async {
  try {
    final result = await InternetAddress.lookup('example.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    }
    return false;
  } on SocketException catch (_) {
    return false;
  }
}


Future<String> encodeImage(File imageFile) async {
  final mimeTypeData =
  lookupMimeType(imageFile.path, headerBytes: [0xFF, 0xD8])!.split('/');
  List<int>? imageBytes;
  if (imageFile != null) {
    imageBytes = await imageFile.readAsBytes();
  }
  print(imageBytes);
  String base64Image = base64.encode(imageBytes!);
//String base64Image = 'data:image/${mimeTypeData[1]};base64,' +'${base64.encode(imageBytes)}';

  return base64Image;

}

double heightOfScreen(BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;
  return screenHeight;
}

double widthOfScreen(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  return screenWidth;
}

SizedBox justWidthSpace({required double width}) => SizedBox(width: width);

SizedBox justHeightSpace({required double height}) => SizedBox(height: height);
