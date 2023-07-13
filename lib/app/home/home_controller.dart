import 'package:flutter/cupertino.dart';
import 'package:portfolio_nghia/config/state_enum.dart';
import 'package:portfolio_nghia/data/project_data.dart';
import 'package:portfolio_nghia/model/portfolio_model.dart';
import 'package:portfolio_nghia/model/project_model.dart';

class HomeController extends ChangeNotifier {
  final ProjectData projectData;
  StateWidget stateWidget = StateWidget.loading;
  HomeController({required this.projectData});
  List<ProjectModel>? projects;
  PortfolioModel? portfolioModel;
  Future<void> init() async {
    stateWidget = StateWidget.loading;
    projects = await projectData.getProject();
    portfolioModel= await projectData.getPortfolio();
    stateWidget = StateWidget.success;
    notifyListeners();
  }
}
