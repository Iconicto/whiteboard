import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:intl/intl.dart';
import 'package:whiteboard/constants/theme_data.dart';

class IndividualFeedbackPage extends StatelessWidget {
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

  final _subtitle = Text(
    "Objected Oriented Programming",
    style: TextStyle(
      fontSize: 18,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: <Widget>[
          Center(child: _quizzesTitle),
          Center(child: _subtitle),
          Divider(),
          _buildFeedbackQuestion("What is a class?"),
          _buildFeedbackQuestion("What is an object?"),
          _buildFeedbackQuestion("What is a variable?"),
        ],
      ),
    );
  }

  Container _buildFeedbackQuestion(String question) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                question,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8.0),
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.greenAccent,
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.greenAccent,
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.greenAccent,
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.grey,
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.redAccent,
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.redAccent,
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
          Container(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("I know"),
              Text("I don't know"),
            ],
          ),
        ],
      ),
    );
  }
}
