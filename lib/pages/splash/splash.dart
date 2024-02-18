import 'dart:async';

import 'package:esports_app/pages/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  void toHome() async{
    Timer( Duration(seconds: 3), () => Get.offAll(() => DashboardPage()));
  }
  
  @override
  Widget build(BuildContext context) {
    
    // Executa o timer para nossa dashboard
    toHome();

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/background-galaxy.png'),fit: BoxFit.cover),
      ),
      child: Center(
        child: Image.asset('assets/images/logo-nlw-esports.png'),
      ),
    );
  }
}