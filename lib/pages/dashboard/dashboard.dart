import 'package:esports_app/pages/dashboard/widgets/game_card_list/game_card_list.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

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
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Image.asset('assets/images/logo-nlw-esports.png',),
              SizedBox(height: 45,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Encontre seu duo!',style: Theme.of(context).textTheme.headline1,),
                  Text('Selecione o game que deseja jogar...', textAlign: TextAlign.left,style: Theme.of(context).textTheme.headline3,)
                ],
              ),
              SizedBox(height: 45,),
              GameCardListWidget(),
              SizedBox(height: 45,),
            ],
          ),
        ),
      ),
    );
  }
}