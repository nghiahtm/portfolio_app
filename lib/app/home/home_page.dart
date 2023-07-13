import 'package:flutter/material.dart';
import 'package:portfolio_nghia/app/home/home_controller.dart';
import 'package:portfolio_nghia/app/home/widget/target_widget.dart';
import 'package:portfolio_nghia/config/color_ui.dart';
import 'package:portfolio_nghia/config/constants.dart';
import 'package:portfolio_nghia/config/image.dart';
import 'package:portfolio_nghia/config/state_enum.dart';
import 'package:portfolio_nghia/config/style_app.dart';
import 'package:portfolio_nghia/app/home/widget/item_contact_widget.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'widget/about_me_widget.dart';
import 'widget/project_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  @override
  Widget build(BuildContext context) {
    final portfolio = context.watch<HomeController>().portfolioModel;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Portfolio',
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
      body: context.watch<HomeController>().stateWidget == StateWidget.loading
          ? Center(
              child: CircularProgressIndicator(
              color: ColorUI.redClothesArsenal,
            ))
          : Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60.0,
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage(
                      portfolio?.avatar ??
                          "",
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    portfolio?.name ?? "",
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
                        AboutMeWidget(
                          experiences: portfolio?.experience??[],
                        ),
                        ProjectWidget(
                          projects:
                              context.watch<HomeController>().projects ?? [],
                        ),
                        TargetWidget(
                          target: portfolio?.target??[],
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
                                onTap: () async {
                                  if (index == 2) {
                                    final Uri emailLaunchUri = Uri(
                                      scheme: 'mailto',
                                      path: 'nghia.htm97@gmail.com',
                                      query: encodeQueryParameters(<String,
                                          String>{
                                        'subject': 'Tới: Minh Nghĩa',
                                      }),
                                    );
                                    launchUrl(emailLaunchUri);
                                    return;
                                  }
                                  await launchUrl(
                                      Uri.parse(Constants.webView[index]));
                                },
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
