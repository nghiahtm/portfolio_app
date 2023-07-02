import 'package:get_it/get_it.dart';
import 'package:portfolio_nghia/app/home/home_controller.dart';
import 'package:portfolio_nghia/config/firebase_config.dart';
import 'package:portfolio_nghia/data/project_data.dart';

final getIt = GetIt.instance;

void setUpInjector() {
  getIt.registerSingleton<FirebaseConfig>(FirebaseConfig()..init());
  getIt.registerSingleton<ProjectData>(
      ProjectData(firebaseConfig: getIt<FirebaseConfig>()));
  getIt.registerLazySingleton<HomeController>(
      () => HomeController(projectData: getIt<ProjectData>()));
}
