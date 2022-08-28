import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plugs_app/constants/colors.dart';
import 'package:plugs_app/screens/auth/login.dart';
import 'package:plugs_app/screens/auth/signup.dart';
import 'package:plugs_app/screens/home/botton_nav_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: ((context, child) => MaterialApp(
            title: 'Plugs App',
            darkTheme: ThemeData(
              // This is the theme of your application.
              //
              // Try running your application with "flutter run". You'll see the
              // application has a blue toolbar. Then, without quitting the app, try
              // changing the primarySwatch below to Colors.green and then invoke
              // "hot reload" (press "r" in the console where you ran "flutter run",
              // or simply save your changes to "hot reload" in a Flutter IDE).
              // Notice that the counter didn't reset back to zero; the application
              // is not restarted.
              primaryColor: primaryColor,
              backgroundColor: primaryBgColor,
              focusColor: primaryLighterBgColor,
              primaryIconTheme: IconTheme.of(context).copyWith(
                color: primaryIconColor,
              ),
              scaffoldBackgroundColor: primaryBgColor,
              textTheme: Theme.of(context).textTheme.apply(
                //  Set default Text() color;  Use:  apply()
                bodyColor: Colors.white,
                displayColor: Colors.white,
              ),

              colorScheme:
              Theme.of(context).colorScheme.copyWith(primary: primaryColor),
            ),
            theme: ThemeData(
              // This is the theme of your application.
              //
              // Try running your application with "flutter run". You'll see the
              // application has a blue toolbar. Then, without quitting the app, try
              // changing the primarySwatch below to Colors.green and then invoke
              // "hot reload" (press "r" in the console where you ran "flutter run",
              // or simply save your changes to "hot reload" in a Flutter IDE).
              // Notice that the counter didn't reset back to zero; the application
              // is not restarted.
              primaryColor: primaryColor,
              backgroundColor: primaryBgColor,
              focusColor: primaryLighterBgColor,
              primaryIconTheme: IconTheme.of(context).copyWith(
                color: primaryIconColor,
              ),
              scaffoldBackgroundColor: primaryBgColor,
              textTheme: Theme.of(context).textTheme.apply(
                    //  Set default Text() color;  Use:  apply()
                    bodyColor: Colors.white,
                    displayColor: Colors.white,
                  ),

              colorScheme:
                  Theme.of(context).colorScheme.copyWith(primary: primaryColor),
            ),
            home:  SignupScreen(),
          )),
    );
  }
}
