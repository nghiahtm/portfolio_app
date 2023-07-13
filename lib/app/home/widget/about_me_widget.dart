import 'package:flutter/material.dart';
import 'package:portfolio_nghia/config/color_ui.dart';
import 'package:portfolio_nghia/config/style_app.dart';
import 'package:portfolio_nghia/app/home/widget/expansion_panel_item.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({Key? key, this.experiences}) : super(key: key);
  final List<String>? experiences;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelItem(
      titleHeader: 'Về tôi',
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
                'Tôi là Nghĩa, Mobile Developer.\nSinh viên năm thứ nhất tại học viện công nghệ BKACAD\n',
                style: StyleApp.headline4)),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Kinh nghiệm:',
              style:
                  StyleApp.headline4.copyWith(color: ColorUI.redClothesArsenal),
            )),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            experiences?.length ?? 0,
            (index) => Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                '- ${experiences?[index]}',
                style: StyleApp.headline4,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
