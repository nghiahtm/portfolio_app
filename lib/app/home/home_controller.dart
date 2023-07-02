import 'package:flutter/cupertino.dart';
import 'package:portfolio_nghia/data/project_data.dart';
import 'package:portfolio_nghia/model/portfolio_model.dart';
import 'package:portfolio_nghia/model/project_model.dart';

class HomeController extends ChangeNotifier {
  final ProjectData projectData;

  HomeController({required this.projectData});
  List<ProjectModel>? projects;
  PortfolioModel? portfolioModel;
  Future<void> init() async {
    projects = await projectData.getProject();
    portfolioModel= await projectData.getPortfolio();
  }
}
