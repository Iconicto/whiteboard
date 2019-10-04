import 'package:flutter/material.dart';

class ModulePage extends StatefulWidget {
  ModulePage({Key key}) : super(key: key);

  _ModulePageState createState() => _ModulePageState();
}

class _ModulePageState extends State<ModulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 500,
        color: Colors.yellow,
        width: 500,
      ),
    );
  }
}
