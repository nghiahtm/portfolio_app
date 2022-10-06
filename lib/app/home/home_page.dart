import 'package:flutter/material.dart';
import 'package:portfolio_nghia/config/constants.dart';
import 'package:portfolio_nghia/config/image.dart';
import 'package:portfolio_nghia/config/style_app.dart';
import 'package:portfolio_nghia/app/home/widget/expansion_panel_item.dart';
import 'package:portfolio_nghia/app/home/widget/item_contact_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widget/about_me_widget.dart';
import 'widget/project_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Xin chào',
          style: StyleApp.appBarTitle,
        ),
        actions: [
          IconButton(
              onPressed: () {
                launch('tel:0912132874');
              },
              icon: const Icon(Icons.phone))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: Image.asset(
                  ImageConstant.imageAvatar,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Hoàng Thọ Minh Nghĩa',
              textAlign: TextAlign.center,
              style: StyleApp.headline2,
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                children: [
                  const AboutMeWidget(),
                  const ProjectWidget(),
                  ExpansionPanelItem(
                    titleHeader: 'Mục tiêu',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      'Liên hệ',
                      style: StyleApp.headline2,
                    ),
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (_, index) {
                        final icon = ImageConstant.listIconSocial[index];
                        final title = Constants.listTitleSocial[index];
                        return ItemContactWidget(
                          imageAsset: icon,
                          titleContact: title,
                        );
                      },
                      separatorBuilder: (_, index) => const Divider(
                            color: Colors.transparent,
                          ),
                      itemCount: ImageConstant.listIconSocial.length)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
