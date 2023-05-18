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

class App extends StatefulWidget {
  AppState createState() => AppState();
}

class AppState extends State<App> {
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
              ChangeNotifierProvider(create: (ctx) => HomeProvider()),

            ],
            child: MaterialApp(
              theme: ThemeData(
                  accentColor: blackColor,
                  unselectedWidgetColor: blackColor,
                  primaryColor: main_color,
                  fontFamily: 'REGULAR'
                // fontFamily: Provider.of<UserProvider>(context).locale == 'ar' ? 'Arabic-Regular' : 'QualionRound-Regular'
              ),
              debugShowCheckedModeBanner: false,
              locale:
              new Locale(Provider.of<UserProvider>(context).locale!, ""),
              localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate
              ],
              supportedLocales: S.delegate.supportedLocales,
              localeListResolutionCallback:
              S.delegate.listResolution(fallback: const Locale('en', '')),
              //   home: DoubleBack(message: '', child: ComplaintOthersScreen()
              home: DoubleBack(message: '', child: SplashScreen()
                // SwipeButton()
              ),
              onGenerateRoute: _getRoutes,
            ),
          );
        },
      ),
    );
  }

  static var routes = <String, WidgetBuilder>{
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
