import 'package:flutter/material.dart';
import 'package:portfolio_nghia/app/home/widget/expansion_panel_item.dart';
import 'package:portfolio_nghia/config/style_app.dart';

class TargetWidget extends StatelessWidget {
  const TargetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelItem(
      titleHeader: 'Mục tiêu',
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "- Trở thành Mobile Developer Senior. Xa hơn là trờ thành Software Engineer",
            style: StyleApp.headline4,
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "- Tiếp cận nhiều công nghệ mới",
            style: StyleApp.headline4,
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "- Đem lại nhiều giá trị cho công ty",
            style: StyleApp.headline4,
          ),
        ),
      ],
    );
  }
}
