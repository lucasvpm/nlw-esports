import 'package:esports_app/pages/splash/splash.dart';
import 'package:esports_app/pages/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'eSports',
      theme: themeData(),
      home: SplashPage(),
    )
  );
}