import 'package:esports_app/pages/dashboard/widgets/game_card/game_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';

class GameCardListWidget extends StatelessWidget {
  const GameCardListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 25),
        child: Row(
          children: [
            GameCardWidget(imagem: 'assets/images/games/game-1.png', nome: 'League of Legends', anuncios: 14),
            GameCardWidget(imagem: 'assets/images/games/game-2.png', nome: 'DOTA 2', anuncios: 10),
            GameCardWidget(imagem: 'assets/images/games/game-3.png', nome: 'Counter Strike', anuncios: 55),
            GameCardWidget(imagem: 'assets/images/games/game-4.png', nome: 'Apex Legends', anuncios: 2),
            GameCardWidget(imagem: 'assets/images/games/game-5.png', nome: 'Fortnite', anuncios: 11),
            GameCardWidget(imagem: 'assets/images/games/game-6.png', nome: 'World of Warcraft', anuncios: 6)
          ],
        ),
      ),
    );
  }
}