import 'package:esports_app/pages/game_info/widgets/user_card/user_card.dart';
import 'package:flutter/material.dart';

class UserCardListWidget extends StatelessWidget {
  const UserCardListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Container(
        padding: EdgeInsets.only(left: 25,right: 40),
        child: Row(
          children: [
            UserCardWidget(nome: 'Lucas Vianna', tempoJogo: '8 anos', diasDisponiveis: '3 dias', horarioDisponivel: '18h - 20h', chamadaAudio: true),
            UserCardWidget(nome: 'Lucas Vianna', tempoJogo: '8 anos', diasDisponiveis: '3 dias', horarioDisponivel: '18h - 20h', chamadaAudio: true),
            UserCardWidget(nome: 'Lucas Vianna', tempoJogo: '8 anos', diasDisponiveis: '3 dias', horarioDisponivel: '18h - 20h', chamadaAudio: true),
            UserCardWidget(nome: 'Lucas Vianna', tempoJogo: '8 anos', diasDisponiveis: '3 dias', horarioDisponivel: '18h - 20h', chamadaAudio: true),
            UserCardWidget(nome: 'Lucas Vianna', tempoJogo: '8 anos', diasDisponiveis: '3 dias', horarioDisponivel: '18h - 20h', chamadaAudio: true),
          ],
        ),
      ),
    );
  }
}