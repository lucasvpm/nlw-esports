import 'dart:async';

import 'package:get/get.dart';

class PopupController extends GetxController{

  PopupController();

  bool isOpen = false;
  int animation_duration = 0;
  double scale_content = 0;
  double background_opacity = 0;

  void popupToggle(){
    
    if(isOpen == false){
      isOpen = true;
      update();
      Timer( Duration(milliseconds: 20), initializeAnimation);
    }else{
      resetAnimation();
      Timer( Duration(milliseconds: 130), (){
        scale_content = 0;
        isOpen = false;
        update();
      });
    }
  }

  void initializeAnimation(){
    animation_duration = 130;
    background_opacity = 1;
    scale_content = 1;
    update();
  }
  
  void resetAnimation(){
    background_opacity = 0;
    update();
  }
}