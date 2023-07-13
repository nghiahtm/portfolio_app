import 'package:portfolio_nghia/config/firebase_config.dart';
import 'package:portfolio_nghia/model/portfolio_model.dart';
import 'package:portfolio_nghia/model/project_model.dart';

class ProjectData {
  final FirebaseConfig firebaseConfig;

  ProjectData({required this.firebaseConfig});

  Future<List<ProjectModel>?> getProject() async {
    final projects = <ProjectModel>[];
    final documents = await firebaseConfig.firebaseFirestore
        .collection("portfolio")
        .doc("xg78qBsMMQO5GnrN0gd4")
        .collection("project")
        .get();
    for (final document in documents.docs) {
      final project = ProjectModel.fromJson(document.data());
      final url = await getUrlImage(project.image);
      projects.add(project..image=url);
    }
    if (projects.isNotEmpty) {
      return projects;
    }
    return null;
  }

  Future<PortfolioModel?> getPortfolio() async {
    final documents = await firebaseConfig.firebaseFirestore
        .collection("portfolio")
        .doc("xg78qBsMMQO5GnrN0gd4")
        .get();
    final getData = documents.data();
    if (getData != null && getData.isNotEmpty) {
      final portfolio = PortfolioModel.fromJson(getData);
      final url = await getUrlImage(portfolio.avatar);
      return portfolio
        ..avatar = url;
    }
    return null;
  }

  Future<String?> getUrlImage(String? image) async {
    if (image != null) {
      final urlRef =
          firebaseConfig.firebaseStorage.ref().child("project").child(image);
      return await urlRef.getDownloadURL();
    }
    return null;
  }
}
