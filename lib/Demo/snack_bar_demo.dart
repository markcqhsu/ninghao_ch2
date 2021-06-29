import 'package:flutter/material.dart';

class SnackBarDemo extends StatefulWidget {

  @override
  _SnackBarDemoState createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBarDemo"),
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
                SnackBarButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SnackBarButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('Processing'),
        duration: const Duration(seconds: 1),
        action: SnackBarAction(
          label: 'OK',
          onPressed: () { },
        ),
      ));
    }, child: Text("Open SnackBar"));
  }
}
