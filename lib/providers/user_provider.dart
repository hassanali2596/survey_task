
import 'package:HSB/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import '../constants/appConstants.dart';
import '../data/sharedPreferences.dart';

class UserProvider with ChangeNotifier {
  String locale = DEFAULT_LANGUAGE;
  bool loading = false,offline=false,progressLoad=false;
  bool rememberMe = false;
  UserDataResponse? userInfo;

  bool isConnectedToInternet = true;
  UserProvider() {
    getConfiguration();
  }

  Future<void> getConfiguration() async {
    locale = await getString(LANGUAGE, DEFAULT_LANGUAGE);
    notifyListeners();
  }

  Future<bool> changeLanguage(String language) async {
    try {
      locale = language;
      await saveString(LANGUAGE, language);
      await saveBoolean(LANGUAGE_SELECTED, true);
      notifyListeners();
      return true;
    } catch (err) {
      return false;
    }
  }

}
