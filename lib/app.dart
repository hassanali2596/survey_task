import 'package:HSB/providers/home_provider.dart';
import 'package:HSB/providers/user_provider.dart';
import 'package:HSB/screens/add_survey_screen.dart';
import 'package:HSB/screens/home_screen.dart';

import 'package:HSB/screens/splash_screen.dart';
import 'package:double_back_to_close/double_back_to_close.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:provider/provider.dart';
import 'constants/appColors.dart';
import 'localization/i18n.dart';


class MyApp extends StatefulWidget {
  static final navigatorKey = GlobalKey<NavigatorState>();
  static final String routeName = "/myApp";


  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context1) {
    return ChangeNotifierProvider(
      create: (ctx) => UserProvider(),
      child: Consumer<UserProvider>(
        builder: (context, value, child) {
          return MultiProvider(
            providers: [

              ChangeNotifierProvider(create: (ctx) => UserProvider()),
              ChangeNotifierProvider(create: (ctx) => HomeProvider()),
            ],
            child: MaterialApp(
              navigatorKey: MyApp.navigatorKey,
              theme: ThemeData(
                accentColor: blackColor,
                unselectedWidgetColor: blackColor,

                primaryColor: main_color,
                  fontFamily: Provider.of<UserProvider>(context).locale == 'ar' ? 'Bahij_SansArabic_Plain' : 'inter',
                canvasColor: whiteColor,
              ),
              debugShowCheckedModeBanner: false,
              locale: new Locale(Provider.of<UserProvider>(context).locale, ""),
              localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate
              ],
              supportedLocales: S.delegate.supportedLocales,
              localeListResolutionCallback:
              S.delegate.listResolution(fallback: const Locale('ar', '')),
              home: DoubleBack(
                  message: '',
                  child:
                  SplashScreen()
                //     SelectLanguageScreen()
              ),
              onGenerateRoute: _getRoutes,
            ),
          );
        },
      ),
    );
  }

  static var routes = <String, WidgetBuilder>{

    MyApp.routeName: (ctx) => MyApp(),

      HomeScreen.routeName: (ctx) => HomeScreen(),
    AddSurveyScreen.routeName: (ctx) => AddSurveyScreen(),



  };

  static Route<BuildContext>? _getRoutes(RouteSettings settings) {
    var builder = routes[settings.name];
    if (builder != null) {
      return new MaterialPageRoute(
        settings: settings,
        builder: builder,
      );
    }
    return null;
  }
}