import 'package:flutter/material.dart';

class UserCanCallWidget extends StatelessWidget {

  final bool chamadas;
  UserCanCallWidget({required this.chamadas});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Chamada de áudio?', style: Theme.of(context).textTheme.bodyText1,),
        SizedBox(height: 4,),
        Text(chamadas == true ? 'Sim' : 'Não',
            style: TextStyle(
              color: chamadas == true ? Color(0xFF34D399) : Color(0xFFF97316),
              fontSize: 14,
              fontWeight: FontWeight.bold
            )
        )
      ],
    );
  }
}