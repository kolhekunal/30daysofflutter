import 'package:flutter/material.dart';
import 'package:flutter_catelog/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CatelogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catelog App".text.xl5.bold.color(context.theme.accentColor).make(),
        SizedBox(width: 0,height: 2,),
        "Trending products".text.xl.make()
      ],
    );
  }
}