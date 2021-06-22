import 'package:flutter/material.dart';
import './Demo/listview-demo.dart';

void main() => runApp(
      App(), //自己定義的Widget
    );

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Widget build...這裡的Widget代表返回值
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("塑蓋"),
        elevation: 0.0,
      ),
      body: ListViewDemo(),
    );
  }
}


