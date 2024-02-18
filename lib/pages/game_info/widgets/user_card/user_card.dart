import 'package:esports_app/pages/game_info/widgets/user_popup/user_popup.controller.dart';
import 'package:esports_app/pages/game_info/widgets/user_card/user_can_call.dart';
import 'package:esports_app/pages/game_info/widgets/user_card/user_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class UserCardWidget extends StatelessWidget {
  
  String nome, tempoJogo, diasDisponiveis, horarioDisponivel;
  bool chamadaAudio;

  PopupController controller = Get.find();

  UserCardWidget({
    required this.nome,
    required this.tempoJogo,
    required this.diasDisponiveis,
    required this.horarioDisponivel,
    required this.chamadaAudio
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      width: 180,
      height: 292,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xFF2A2634)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserInfoWidget(label: 'Nome', info: nome),
          SizedBox(height: 15,),
          UserInfoWidget(label: 'Tempo de Jogo', info: tempoJogo),
          SizedBox(height: 15,),
          UserInfoWidget(label: 'Disponibilidade', info: '$diasDisponiveis * $horarioDisponivel '),
          SizedBox(height: 15,),
          UserCanCallWidget(chamadas: true),
          SizedBox( height: 15, ),
          Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(6),
            child: InkWell(
              onTap: () => controller.popupToggle(),
              child: Ink(
                decoration: BoxDecoration(
                  color: Color(0xFF8B5CF6),
                  borderRadius: BorderRadius.circular(6)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/images/GameController.svg'),
                      SizedBox(width: 10,),
                      Text('Conectar', style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),)
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}