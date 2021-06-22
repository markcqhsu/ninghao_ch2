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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        //一般都會用在Scaffold裏面
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: "Navigation",
          onPressed: () => debugPrint("Navigation button is pressed"),
        ),
        title: Text("塑蓋"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "Search",
            onPressed: () => debugPrint("Search button is pressed"),
          ),
        ],
        elevation: 0.0,
      ),
      // body: ListViewDemo(),
      body: null,
    );
  }
}
