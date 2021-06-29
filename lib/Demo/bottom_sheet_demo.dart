import 'package:flutter/material.dart';
import 'dart:async';

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  _openBottomSheet() {
    _bottomSheetScaffoldKey.currentState!.showBottomSheet((BuildContext context) {
      return BottomAppBar(
        child: Container(
          height: 90.0,
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(Icons.pause_circle_filled_outlined),
              SizedBox(
                width: 16.0,
              ),
              Text("01:30/03:30"),
              Expanded(
                child: Text(
                  "Fix you - Coldplay",
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),
        ),
      );
    });
  }

  Future _openModalBottomSheet() async {
    final option = await showModalBottomSheet(context: context, builder: (BuildContext context){
      return Container(
        height: 200.0,
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text("Option A"),
              onTap: (){
                Navigator.pop(context, "A");
              },
            ),
            ListTile(
              title: Text("Option B"),
              onTap: (){
                Navigator.pop(context, "B");
              },
            ),
            ListTile(
              title: Text("Option C"),
              onTap: (){
                Navigator.pop(context, "C");
              },
            ),
          ],
        ),

      );
    }
    );
    print(option);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text("_WidgetDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: _openBottomSheet,
                  child: Text("Open BottomSheet"),
                ),
                TextButton(
                  onPressed: _openModalBottomSheet,
                  child: Text("Modal BottomSheet"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
