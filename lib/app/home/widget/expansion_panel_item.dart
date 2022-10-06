import 'package:flutter/material.dart';
import 'package:portfolio_nghia/config/color_ui.dart';

class ExpansionPanelItem extends StatelessWidget {
  const ExpansionPanelItem(
      {Key? key, required this.titleHeader, this.children = const []})
      : super(key: key);
  final String titleHeader;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(dividerColor: Colors.transparent),
      child: ExpansionTile(
        title: Text(titleHeader),
        backgroundColor: ColorUI.whiteClothesArsenal,
        collapsedTextColor: ColorUI.redClothesArsenal,
        collapsedBackgroundColor: ColorUI.whiteClothesArsenal,
        textColor:  ColorUI.redClothesArsenal,
        iconColor: ColorUI.redClothesArsenal,
        collapsedIconColor: ColorUI.redClothesArsenal,
        childrenPadding: const EdgeInsets.symmetric(horizontal: 16),
        children: children,
      ),
    );
  }
}
