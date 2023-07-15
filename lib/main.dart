import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spish/presentation/view/get_started/get_started_view.dart';
import 'package:spish/provider/admin_bottom_nav_provider.dart';
import 'package:spish/provider/bottom_nav_provider.dart';
import 'package:spish/provider/dropdown_provider.dart';

import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('es', 'ES'),
          Locale('zh', 'CN'),
          Locale('ar', 'SA'),
          Locale('de', 'DE'),
          Locale('fr', 'FR'),
          Locale('hi', 'IN'),
          Locale('it', 'IT'),
          Locale('ja', 'JP'),
          Locale('pt', 'PT'),
          Locale('ru', 'RU'),
          Locale('zh', 'CN')
        ],
        path: 'assets/translations',
        // <-- change the path of the translation files
        fallbackLocale: const Locale('en', 'US'),
        saveLocale: true,
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DropDownProvider(),
        ),
        ChangeNotifierProvider(create: (context) => BottomNavigationProvider(),),
        ChangeNotifierProvider(create: (context) => AdminBottomNavigationProvider(),),

      ],
      child: MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          home: GetStartedView()),
    );
  }
}
