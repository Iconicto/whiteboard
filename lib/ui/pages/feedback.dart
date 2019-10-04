import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:whiteboard/constants/route_paths.dart';
import 'package:whiteboard/constants/text_styles.dart';
import 'package:whiteboard/constants/theme_data.dart';
import 'package:whiteboard/helpers/screen_util.dart';

class FeedbackPage extends StatelessWidget {
  @widget
  AppBar _buildAppBar() => AppBar(
        title: _appBarTitle,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        brightness: Brightness.light,
        // or use Brightness.dark
        backgroundColor: Colors.grey[50],
      );

  final _appBarTitle = Align(
    alignment: Alignment.centerRight,
    child: Text(
      "${DateFormat("MMM d, yyyy").format(DateTime.now())}",
      style: TextStyles.subtitle,
    ),
  );

  final _quizzesTitle = Text(
    "Feedback",
    style: TextStyles.title,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: <Widget>[
          Center(child: _quizzesTitle),
          SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(IndividualFeedbackPageRoute);
            },
            child: _buildQuestionaireModule(
              "Object Oriented\nProgramming",
              "Mr. G",
              "1",
              DateTime.parse("2019-09-30T22:45:52.326000+05:30"),
            ),
          ),
          Divider(),
          _buildQuestionaireModule(
            "Advanced Client Side\nDevelopment",
            "Mr. S",
            "4",
            DateTime.parse("2019-09-30T22:45:52.326000+03:30"),
          ),
          Divider(),
          _buildQuestionaireModule(
            "Server Side\nDevelopment",
            "Mr. Z",
            "2",
            DateTime.parse("2019-09-30T22:45:52.326000+03:30"),
          )
        ],
      ),
    );
  }

  Padding _buildQuestionaireModule(String moduleName, String lecturerName,
      String questionaireNo, DateTime dateTime) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    moduleName,
                    style: TextStyle(
                      fontSize: ScreenUtil.getTextSize(11),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("F$questionaireNo"),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        width: 2, //
                        color: AppColors.BLUE,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 12.0, 8.0, 1.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Uploaded By $lecturerName",
                    style: TextStyles.blueSubtitle,
                  ),
                  Text(
                    timeago.format(dateTime),
                    style: TextStyles.subtitle,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
