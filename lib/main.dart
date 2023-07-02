import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_nghia/app/app.dart';
import 'package:portfolio_nghia/commons/di.dart';
import 'package:portfolio_nghia/firebase_options.dart';

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Firebase.initializeApp();
  setUpInjector();
  runApp(const MyApp());
}