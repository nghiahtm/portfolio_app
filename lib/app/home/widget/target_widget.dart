import 'package:flutter/material.dart';
import 'package:portfolio_nghia/app/home/widget/expansion_panel_item.dart';
import 'package:portfolio_nghia/config/style_app.dart';

class TargetWidget extends StatelessWidget {
  const TargetWidget({Key? key, required this.target}) : super(key: key);
  final List<String?>target;
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelItem(
      titleHeader: 'Mục tiêu',
      children: List.generate(target.length, (index) =>  Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "- ${target[index]}",
          style: StyleApp.headline4,
        ),
      ),),
    );
  }
}
