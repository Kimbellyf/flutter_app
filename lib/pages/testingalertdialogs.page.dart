import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/dialogs.dart';


void main() => runApp(MaterialApp(home:  MyAppTestingDialog()));

class MyAppTestingDialog extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Bottom modal tutorial',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new TestingAlertDialogsPage(title: 'Bottom modal tutorial'),
    );
    return null;
  }
}

class TestingAlertDialogsPage extends StatefulWidget{
  TestingAlertDialogsPage({Key key, this.title}) : super(key: key);
  final String title;
  _TestingAlertDialogsPageState createState() => new _TestingAlertDialogsPageState();
}

class _TestingAlertDialogsPageState extends State<TestingAlertDialogsPage> {
  Dialogs dialogs = new Dialogs();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(widget.title),
      ),
      body: Center(
        child: Text(
          'center',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final action = await Dialogs.yesAbortDialog(context, "my title", "my body");
          if (action == DialogAction.yes) {
            //setState(() => tappedYes = true);
          }else{
            //setState(() => tappedYes = false);
          }
        },
        child: Icon(Icons.add),
      ),

    );

  }

}