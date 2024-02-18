import 'package:esports_app/pages/game_info/game_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameCardWidget extends StatelessWidget {
  final String imagem;
  final String nome;
  final int anuncios;

  final double width = 180;
  final double height = 240;

  GameCardWidget({ required this.imagem, required this.nome, required this.anuncios });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.only(right: 15),
      child: Material(
        color: Colors.transparent,
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          onTap: () {
            Get.to( () => GameInfoWidget( nome: nome, imagem: imagem ),transition: Transition.fadeIn );
          },
          child: Ink.image(
            image: AssetImage(imagem),
            fit: BoxFit.cover,
            child: Stack(
              children: [
                Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color(0xff000000),
                      Color.fromRGBO(0, 0, 0, 0)
                    ]
                  )
                ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 35, left: 15, bottom: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(nome, style: Theme.of(context).textTheme.headline2),
                        Text('$anuncios anúncios', style: Theme.of(context).textTheme.bodyText1,)
                      ],
                    ),
                  ),
                )
              )
              ],
            ),
          ),
        ),
      ),
    );
  }
}