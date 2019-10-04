import 'package:whiteboard/constants/app_colors.dart';
import 'package:whiteboard/constants/route_paths.dart' as routes;
import 'package:whiteboard/locator.dart';
import 'package:whiteboard/router.dart' as router;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future main() async {
  setupLocator();
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static BuildContext context;

  final ThemeData _themeData = ThemeData(
      fontFamily: 'CircularStd',
      primaryColor: AppColors.BLUE,
      brightness: Brightness.light);

  @override
  Widget build(BuildContext context) {
    context = context;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Everything Flutter',
      theme: _themeData,
      onGenerateRoute: router.generateRoute,
      initialRoute: routes.HomePageRoute,
    );
  }
}
