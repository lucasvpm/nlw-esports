import 'package:esports_app/pages/game_info/widgets/user_popup/user_popup.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';


class UserPopupWidget extends StatelessWidget {
  

  // Map<String,dynamic> dados;

  UserPopupWidget();
  
  final largura = Get.width;
  final altura = Get.height;

  PopupController controller = Get.put(PopupController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PopupController>(
      builder: (controller){
      if(controller.isOpen == true){
          return AnimatedOpacity(
            opacity: controller.background_opacity,
            duration: Duration( milliseconds: controller.animation_duration ),
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () => controller.popupToggle(),
                  child: Container(
                  width: largura,
                  height: altura,
                  decoration: BoxDecoration(
                  backgroundBlendMode: BlendMode.hardLight,
                  color: Color.fromRGBO(18, 18, 20, 0.6 )
                  )),
                ),
                Stack(
                  children: [
                    Center(
                    child: AnimatedScale(
                      scale: controller.scale_content,
                      duration: Duration( milliseconds: controller.animation_duration ),
                      child: Stack(
                        children: [
                        Container(
                        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 25),
                        width: largura * 0.8,
                        height: 340,
                        decoration: BoxDecoration(
                          color: Color(0xFF2A2634),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.check_circle_outline, color: Color(0xff34D399),
                              size: 65,
                            ),
                            SizedBox(height: 30,),
                            Text('Let’s play!',style: Theme.of(context).textTheme.headline1,),
                            SizedBox(height: 10,),
                            Text('Agora é só começar a jogar!',style: Theme.of(context).textTheme.headline4,),
                            SizedBox(height: 40,),
                            Text('Adicione no Discord',style: Theme.of(context).textTheme.headline2,),
                            SizedBox(height: 20,),
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {
                                  Clipboard.setData(ClipboardData(text: "LM#5235"));
                                  Get.snackbar(
                                    'Copiado!', 'Você copiou o ID do usuário: LM#5235',
                                    backgroundColor: Color(0xFF18181B),
                                    borderRadius: 0,
                                    colorText: Colors.white,
                                    snackPosition: SnackPosition.BOTTOM,
                                    snackStyle: SnackStyle.GROUNDED,
                                    showProgressIndicator: true,
                                    progressIndicatorBackgroundColor: Theme.of(context).primaryColor,
                                  );
                                },
                                child: Ink(
                                  padding: EdgeInsets.all(8),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF18181B),
                                    borderRadius: BorderRadius.circular(4)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('LM#5235', textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyText1,),
                                    
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        child: GestureDetector(
                          onTap: () => controller.popupToggle(),
                          child: Icon(Icons.close, color: Color(0xFF71717A),)),
                        right: 15,
                        top: 15,
                      )
                        ],
                      ),
                    ),
                  ),
                  ]
                ),
              ],
            ),
          );
      }else{
        return SizedBox();
      }
      }
    );
  }
}