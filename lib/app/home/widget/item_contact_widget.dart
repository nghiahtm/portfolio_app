import 'package:flutter/material.dart';
import 'package:portfolio_nghia/app/config/color_ui.dart';
import 'package:portfolio_nghia/app/config/style_app.dart';

class ItemContactWidget extends StatelessWidget {
  const ItemContactWidget(
      {Key? key,
      required this.imageAsset,
      this.titleContact,
      this.colorTitleContact})
      : super(key: key);
  final String imageAsset;
  final String? titleContact;
  final Color? colorTitleContact;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: ColorUI.whiteClothesArsenal,
          borderRadius: BorderRadius.circular(16),),
      child: Row(
        children: [
          Image.asset(
            imageAsset,
            height: 36,
            width: 24,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            titleContact ?? 'Facebook',
            style: StyleApp.headline4
                .copyWith(color: colorTitleContact ?? Colors.black),
          )
        ],
      ),
    );
  }
}
