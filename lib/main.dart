import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:placeholder_api/src/ui/constants/base_colors.dart';
import 'package:placeholder_api/src/ui/routing/routes_names.dart';
import 'package:placeholder_api/src/ui/routing/route_manager.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: primary,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );

    return MaterialApp(
      title: 'Placeholder Api',
      theme: ThemeData(
        primaryColor: primary,
        accentColor: secondary,
        fontFamily: 'Nunito',
        scaffoldBackgroundColor: primary,
        inputDecorationTheme: const InputDecorationTheme(
          border: InputBorder.none,
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 72.0,
            fontWeight: FontWeight.bold,
          ),
          headline3: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w700,
            color: darkText,
          ),
          headline4: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
            color: darkText,
          ),
          bodyText1: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color: darkText,
          ),
          bodyText2: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
            color: darkText,
          ),
        ),
      ),
      initialRoute: LOGIN,
      onGenerateRoute: RouterManager.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
