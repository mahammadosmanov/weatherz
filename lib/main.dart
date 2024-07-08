import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weatherz/constants/routes.dart';
import 'package:weatherz/screens/home/home_screen.dart';
import 'package:weatherz/screens/settings/settings_screen.dart';
import 'package:weatherz/screens/splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale("en"),
      ],
      fallbackLocale: const Locale("en"),
      path: "assets/language",
      useOnlyLangCode: true,
      assetLoader: const JsonAssetLoader(),
      startLocale: const Locale("en"),
      child: const Weatherz(),
    ),
  );
}

class Weatherz extends StatelessWidget {
  const Weatherz({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(375, 812),
      builder: (ctx, c) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: false,
        ),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        getPages: [
          GetPage(
            name: Routes.splash,
            page: () => const SplashScreen(),
          ),
          GetPage(
            name: Routes.home,
            page: () => const HomeScreen(),
          ),
          GetPage(
            name: Routes.settings,
            page: () => const SettingsScreen(),
          ),
        ],
      ),
    );
  }
}
