import 'package:flutter/material.dart';
import 'package:portfolio_nghia/config/style_app.dart';
import 'package:portfolio_nghia/model/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({Key? key, this.project}) : super(key: key);
  final ProjectModel? project;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(project?.name ?? "", style: StyleApp.appBarTitle),
        ),
        body: ListView(
          padding: EdgeInsets.zero,
          physics: const ClampingScrollPhysics(),
          children: [
            Container(
                color: Colors.white,
                height: 120,
                padding: const EdgeInsets.all(16),
                child: Image.network(project?.image ?? "")),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Công nghệ sử dụng:",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(project?.technologies?.length ?? 0,
                        (index) => Text(project?.technologies?[index] ?? "")),
                  ),
                  Text(
                    "Vai trò: ${project?.role}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    "Số lượng thành viên: ${project?.countMembers}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Thông tin cửa hàng",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      if (project?.ios == null && project?.google == null)
                        const Text("Sản phẩm thuộc dự án Freelance"),
                      if (project?.ios != null)
                        InkWell(
                          onTap: () async {
                            final Uri url = Uri.parse(project?.ios ?? "");
                            if (!await launchUrl(url)) {
                              throw Exception('Could not launch $url');
                            }
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/image/appstore.png",
                                width: 24,
                              ),
                              Text(
                                ' ${project?.name}',
                              )
                            ],
                          ),
                        ),
                      if (project?.google != null)
                        InkWell(
                          onTap: () async {
                            final Uri url = Uri.parse(project?.google ?? "");
                            if (!await launchUrl(url)) {
                              throw Exception('Could not launch $url');
                            }
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/image/play.png",
                                height: 24,
                              ),
                              Text(
                                ' ${project?.name}',
                              )
                            ],
                          ),
                        ),
                    ],
                  ),
                  const Text(
                    "Mô tả:",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    project?.description ?? "",
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
