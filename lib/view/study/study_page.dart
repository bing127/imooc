import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudyPage extends StatefulWidget {
  StudyPage({Key key}) : super(key: key);

  _StudyPageState createState() => _StudyPageState();
}

class _StudyPageState extends State<StudyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("学习"),
    );
  }
}