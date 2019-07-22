import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:fluro/fluro.dart';
import 'package:imooc/routers/application.dart';
import 'package:imooc/routers/routers.dart';
import 'package:imooc/public/Colours.dart';
import 'package:imooc/other/splash_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main(){
  runApp(MyApp());
  // 透明状态栏
  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {

  MyApp()  {
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMOOC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colours.app_main,
        scaffoldBackgroundColor: Colors.white,
        dividerColor: Color(0xFFEEEEEE),
        fontFamily: "PingFang"
      ),
      home: SplashScreen(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('zh','CH'),
        const Locale('en','US'),
      ],
    );
  }
}
