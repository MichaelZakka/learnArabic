import 'package:get/get.dart';
import 'package:kaleela/views/auth/binding.dart';
import 'package:kaleela/views/auth/index.dart';
import 'package:kaleela/views/choose_language/binding.dart';
import 'package:kaleela/views/choose_language/index.dart';
import 'package:kaleela/views/example/binding.dart';
import 'package:kaleela/views/example/index.dart';
import 'package:kaleela/views/splash/binding.dart';
import 'package:kaleela/views/splash/index.dart';
import 'package:kaleela/views/topics/binding.dart';
import 'package:kaleela/views/topics/index.dart';
import 'package:kaleela/views/user_mode/biniding.dart';
import 'package:kaleela/views/user_mode/index.dart';

abstract class AppRouting {
  static List<GetPage> routes() => [
        GetPage(
          name: Pages.splash.value,
          page: () => SplashPage(),
          binding: SplashBinding(),
        ),
        GetPage(
          name: Pages.chooseLanguage.value,
          page: () => ChooseLanguagePage(),
          binding: ChooseLangBinding(),
        ),
        GetPage(
          name: Pages.userMode.value,
          page: () => UserModePage(),
          binding: UserModeBinding(),
        ),
        GetPage(
          name: Pages.auth.value,
          page: () => AuthPage(),
          binding: AuthBinding(),
        ),
        GetPage(
          name: Pages.topics.value,
          page: () => TopicsPage(),
          binding: TopicsBinding(),
        ),
        GetPage(
          name: Pages.example.value,
          page: () => ExamplePage(),
          binding: ExampleBinding(),
        ),
      ];
}

enum Pages {
  splash,
  chooseLanguage,
  userMode,
  auth,
  topics,
  example,
}

extension PagesExtension on Pages {
  String get value {
    switch (this) {
      case Pages.splash:
        return '/splashPage';
      case Pages.chooseLanguage:
        return '/chooseLanguage';
      case Pages.userMode:
        return '/userMode';
      case Pages.auth:
        return '/auth';
      case Pages.topics:
        return '/topics';
      case Pages.example:
        return '/example';
      default:
        throw 'unnamed route';
    }
  }
}

abstract class Navigation {
  static Pages? getPage(String route) {
    switch (route) {
      case '/splashPage':
        return Pages.splash;
      case '/userMode':
        return Pages.userMode;
      case '/chooseLanguage':
        return Pages.chooseLanguage;
      case '/auth':
        return Pages.auth;
      case '/topics':
        return Pages.topics;
      case '/example':
        return Pages.example;
      default:
        return null;
    }
  }
}
