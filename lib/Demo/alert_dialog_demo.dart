import 'package:flutter/material.dart';
import 'dart:async';

enum Action{
  OK,
  Cancel,
}

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _choice = "Nothing";

  Future _openAlertDialog() async{
    final action = await showDialog(
      context: context,
      barrierDismissible: false,//強制用戶一定要按
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Alert Dialog"),
          content: Text("Are you sure about this?"),
          actions: <Widget>[//這個Widget不寫的話, 上面showDialog的context參數會顯示錯誤
            TextButton(
              onPressed: () {
                Navigator.pop(context, Action.Cancel);
              },
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, Action.OK);
              },
              child: Text("OK"),
            )
          ],
        );
      },
    );
    switch (action){
      case Action.OK:
        setState(() {
          _choice = "OK";
        });
        break;
      case Action.Cancel:
        setState(() {
          _choice = "Cancel";
        });
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDialogDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Your choice is: $_choice"),
            SizedBox(height: 16.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _openAlertDialog,
                  child: Text("Open AlertDialog"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
