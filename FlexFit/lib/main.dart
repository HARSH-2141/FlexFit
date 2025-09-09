import 'package:flexfit/Home_Page.dart';
import 'package:flexfit/Intro_Page/Intro_Page_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
await SystemChrome.setPreferredOrientations([
  DeviceOrientation.portraitUp
]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage1(),
    );
  }
}
