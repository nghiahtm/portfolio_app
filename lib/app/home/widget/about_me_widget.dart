import 'package:flutter/material.dart';
import 'package:portfolio_nghia/app/config/color_ui.dart';
import 'package:portfolio_nghia/app/config/constants.dart';
import 'package:portfolio_nghia/app/config/style_app.dart';
import 'package:portfolio_nghia/app/home/widget/expansion_panel_item.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelItem(
      titleHeader: 'Về tôi',
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Text('Tôi là Nghĩa, một Mobile Developer\n',
                style: StyleApp.headline4)),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Kinh nghiệm:',
              style: StyleApp.headline4
                  .copyWith(color: ColorUI.redClothesArsenal),
            )),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            Constants.dataAboutMe,
            style: StyleApp.headline4,
          ),
        )
      ],
    );
  }
}
