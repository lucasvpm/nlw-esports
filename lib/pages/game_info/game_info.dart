import 'package:esports_app/pages/game_info/widgets/user_card_list/user_card_list.dart';
import 'package:esports_app/pages/game_info/widgets/user_popup/user_popup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameInfoWidget extends StatelessWidget {

  final String nome, imagem;

  double largura = Get.width;
  double altura = Get.height;
  
  GameInfoWidget({required this.nome, required this.imagem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background-galaxy.png'),
            fit: BoxFit.cover
          )
        ),
        child: Stack(
          children: [
          SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              AppBar(
                leading: IconButton(
                  padding: EdgeInsets.all(5),
                  icon: Icon( Icons.arrow_back_ios_new, color: Color(0xFFD4D4D8),),
                  onPressed: () => Get.back(),
                ),
                centerTitle: true,
                backgroundColor: Colors.transparent,
                shadowColor: Color.fromRGBO(0, 0, 0, 0.1),
                title: Image.asset('assets/images/logo-nlw-esports.png',height: 50,width: 81,alignment: Alignment.center,),
              ),
              SizedBox(height: 20,),
              Container(
                width: largura,
                height: 200,
                padding: EdgeInsets.all(25),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagem),
                      fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(8)
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 25,right: 25),
                width: largura,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(nome,style: Theme.of(context).textTheme.headline1,),
                    Text('Conecte-se e comece a jogar!', textAlign: TextAlign.left,style: Theme.of(context).textTheme.bodyText1,)
                  ],
                ),
              ),
              SizedBox(height: 25),
              UserCardListWidget(),
              SizedBox(height: 35)
            ],
          ),
        ),
        UserPopupWidget()
          ]
        ),
      ),
    );
  }
}