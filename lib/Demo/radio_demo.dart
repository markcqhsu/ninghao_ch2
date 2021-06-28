import 'package:flutter/material.dart';

class radioDemo extends StatefulWidget {
  @override
  _radioDemoState createState() => _radioDemoState();
}

class _radioDemoState extends State<radioDemo> {
  int _radioGroupA = 0;

  void _handleRadioValueChange(int? value) {
    setState(() {
      _radioGroupA = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Demo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("RadioGroupValue: $_radioGroupA"),
            SizedBox(height: 32.0,),
            RadioListTile(
              value: 0,
              groupValue: _radioGroupA,
              onChanged: _handleRadioValueChange,
              title: Text("OptionA"),
              subtitle: Text("Description"),
              secondary: Icon(Icons.filter_1),
              selected: _radioGroupA == 0,
            ),
            RadioListTile(
              value: 1,
              groupValue: _radioGroupA,
              onChanged: _handleRadioValueChange,
              title: Text("OptionB"),
              subtitle: Text("Description"),
              secondary: Icon(Icons.filter_2),
              selected: _radioGroupA == 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Radio(
                //   value: 0,
                //   groupValue: _radioGroupA,
                //   onChanged: _handleRadioValueChange,
                //   activeColor: Colors.blue,
                // ),
                // Radio(
                //   value: 1,
                //   groupValue: _radioGroupA,
                //   onChanged: _handleRadioValueChange,
                //   activeColor: Colors.blue,
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
