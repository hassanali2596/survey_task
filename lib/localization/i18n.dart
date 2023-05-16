import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class S implements WidgetsLocalizations {
  const S();
  static S? current;
  static const GeneratedLocalizationsDelegate delegate =
  GeneratedLocalizationsDelegate();

  // English translation (Default)

  String get selectLanguage => "Language";
  String get arabic => "العربية";
  String get english => "English";
  String get search => "Search";
  String get welcome => "    Welcome 👋";
  String get youCanSearch => "You can search here for any inquiries related to your Hajj or Umrah trip, rituals and other common questions.";
  String get camera => "Camera";
  String get gallery => "Gallery";
  String get addLost => "Add lost";
  String get name => "Name ";
  String get age => "Age ";
  String get addImage => "Add Image";
  String get add => "Add";
  String get login => "Login";
  String get pleaseLogin => "Please, login to add lost people  !";
  String get email => "Email";
  String get password => "Password";
  String get sadaqaProjects => "Charity Projects";
  String get lost => "Lost";
  String get pleaseContact => "Please call ";
  String get whenFindHim => " when you find him/her !";
  String get ayaQuraan => "{You will not attain righteousness until you spend what you love}";
  String get donateNow => "Donate now";
  String get donate => "Donate";
  String get settings => "Settings";
  String get home => "Home";
  String get year => "Year";

  String get title => "title";
  String get surveys => "Surveys";
  String get save =>"Save";





  static S of(BuildContext context) => Localizations.of<S>(context, S)!;

  @override
  TextDirection get textDirection => TextDirection.ltr;
}


// Arabic translation
class $ar extends S {
  const $ar();
  String get selectLanguage => "اللغة";
  String get arabic => "العربية";
  String get english => "English";
  String get search => "بحث";
  String get welcome => "    مرحباً بك 👋";
  String get youCanSearch => "بإمكانك البحث هنا عن أي استفسار متعلق برحلتك للحج أو العمرة، وعن المناسك وغيرها من الأسئلة الشائعة";
  String get camera => "الكاميرا";
  String get gallery => "معرض الصور";
  String get addLost => "إضافة مفقود";
  String get name => "الإسم";
  String get age => "العمر";
  String get addImage => "أضف صورة";
  String get add => "أضف";
  String get login => "تسجيل الدخول";
  String get pleaseLogin => "برجاء تسجيل دخولك حتى تتمكن من إضافة مفقود  !";
  String get email => "البريد الإلكتروني";
  String get password => "كلمة المرور";
  String get sadaqaProjects => "مشاريع الصدقة";
  String get lost => "مفقود";
  String get pleaseContact => "يرجى التواصل على رقم ";
  String get whenFindHim => " في حالة االعثور عليه.!";
  String get ayaQuraan => "{لَنْ تَنَالُوا الْبِرَّ حَتَّى تُنْفِقُوا مِمَّا تُحِبُّونٌَ}";
  String get donateNow => "تبرع الأن";
  String get settings => "الإعدادات";
  String get donate => "تصدق";
  String get home => "الرئيسية";
  String get year => "عام";



  String get title => "العنوان";
  String get surveys => "الاستبيانات";
  String get save =>"حفظ";










}


class $en extends S {
  const $en();
}

class GeneratedLocalizationsDelegate extends LocalizationsDelegate<S> {
  const GeneratedLocalizationsDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale("ar", ""),
      Locale("en", ""),
    ];
  }

  LocaleListResolutionCallback listResolution(
      {Locale? fallback, bool withCountry = true}) {
    return (List<Locale>? locales, Iterable<Locale> supported) {
      if (locales == null || locales.isEmpty) {
        return fallback ?? supported.first;
      } else {
        return _resolve(locales.first, fallback!, supported, withCountry);
      }
    };
  }

  LocaleResolutionCallback resolution(
      {Locale? fallback, bool withCountry = true}) {
    return (Locale? locale, Iterable<Locale> supported) {
      return _resolve(locale!, fallback!, supported, withCountry);
    };
  }

  @override
  Future<S> load(Locale locale) {
    final String? lang = getLang(locale);
    if (lang != null) {
      switch (lang) {
        case "ar":
          S.current = const $ar();
          return SynchronousFuture<S>(S.current!);
        case "en":
          S.current = const $en();
          return SynchronousFuture<S>(S.current!);
        default:
        // NO-OP.
      }
    }
    S.current = const S();
    return SynchronousFuture<S>(S.current!);
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale, true);

  @override
  bool shouldReload(GeneratedLocalizationsDelegate old) => false;

  ///
  /// Internal method to resolve a locale from a list of locales.
  ///
  Locale _resolve(Locale locale, Locale fallback, Iterable<Locale> supported,
      bool withCountry) {
    if (locale == null || !_isSupported(locale, withCountry)) {
      return fallback;
    }

    final Locale languageLocale = Locale(locale.languageCode, "");
    if (supported.contains(locale)) {
      return locale;
    } else if (supported.contains(languageLocale)) {
      return languageLocale;
    } else {
      final Locale fallbackLocale = fallback;
      return fallbackLocale;
    }
  }

  ///
  /// Returns true if the specified locale is supported, false otherwise.
  ///
  bool _isSupported(Locale locale, bool withCountry) {
    if (locale != null) {
      for (Locale supportedLocale in supportedLocales) {
        // Language must always match both locales.
        if (supportedLocale.languageCode != locale.languageCode) {
          continue;
        }

        // If country code matches, return this locale.
        if (supportedLocale.countryCode == locale.countryCode) {
          return true;
        }

        // If no country requirement is requested, check if this locale has no country.
        if (true != withCountry &&
            (supportedLocale.countryCode == null ||
                supportedLocale.countryCode!.isEmpty)) {
          return true;
        }
      }
    }
    return false;
  }
}

String? getLang(Locale l) =>
    l == null
        ? null
        : l.countryCode != null && l.countryCode!.isEmpty
        ? l.languageCode
        : l.toString();
