import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_three/HomeScreen_Package/home_screen.dart';
import 'package:todo_three/Provider_Package/app_config_provider.dart';
import 'package:todo_three/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => AppConfigProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      title: 'ToDo App Titel On Tap',
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routesName,
      routes: {
        HomeScreen.routesName: (context) => HomeScreen(),
      },
      theme: MyTheme.myThemeLightMod,
      locale: Locale(provider.appLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
