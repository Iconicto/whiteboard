import 'package:whiteboard/constants/route_paths.dart' as routes;
import 'package:whiteboard/constants/route_paths.dart';
import 'package:whiteboard/ui/pages/feedback.dart';
import 'package:whiteboard/ui/pages/individual_feedback.dart';
import 'package:whiteboard/ui/pages/module.dart';
import 'package:whiteboard/ui/pages/pages.dart';
import 'package:whiteboard/ui/pages/quiz.dart';
import 'package:whiteboard/ui/pages/quizzes.dart';
import 'package:whiteboard/ui/widgets/test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routes.HomePageRoute:
      return MaterialPageRoute(
        builder: (context) => HomePage(),
      );
    case routes.QuizPageRoute:
      return MaterialPageRoute(
        builder: (context) => QuizPage(),
      );
    case routes.TutorialPageRoute:
      return MaterialPageRoute(
        builder: (context) => TutorialPage(),
      );
    case routes.ModulePageRoute:
      return MaterialPageRoute(
        builder: (context) => ModulePage(),
      );
    case routes.QuizzesPageRoute:
      return MaterialPageRoute(
        builder: (context) => QuizzesPage(),
      );
    case routes.FeedbackPageRoute:
      return MaterialPageRoute(
        builder: (context) => FeedbackPage(),
      );
    case routes.IndividualFeedbackPageRoute:
      return MaterialPageRoute(
        builder: (context) => IndividualFeedbackPage(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No path for ${settings.name}'),
          ),
        ),
      );
  }
}
