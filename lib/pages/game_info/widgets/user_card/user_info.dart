import 'package:flutter/material.dart';

class UserInfoWidget extends StatelessWidget {
  
  String label, info;
  UserInfoWidget({ required this.label, required this.info });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.bodyText1,),
        SizedBox(height: 4,),
        Text(info, style: Theme.of(context).textTheme.bodyText2,)
      ],
    );
  }
}