import 'package:flutter/material.dart';
import './Demo/drawer_demo.dart';
import './Demo/bottom_navigation_demo.dart';
import './Demo/listview-demo.dart';
import './Demo/basic_demo.dart';

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
        primarySwatch: Colors.yellow, //底部導航欄項目顏色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70, //水波紋效果
      ),
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          //一般都會用在Scaffold裏面
          // leading: IconButton(
          //   icon: const Icon(Icons.menu),
          //   tooltip: "Navigation",
          //   onPressed: () => debugPrint("Navigation button is pressed"),
          // ),
          title: Text("塑蓋"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              tooltip: "Search",
              onPressed: () => debugPrint("Search button is pressed"),
            ),
          ],
          elevation: 0.0,
          bottom: const TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        // body: ListViewDemo(),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            // Icon(
            //   Icons.local_florist,
            //   size: 128.0,
            //   color: Colors.black12,
            // ),
            // Icon(
            //   Icons.change_history,
            //   size: 128.0,
            //   color: Colors.black12,
            // ),
            BasicDemo(),
            Icon(
              Icons.directions_bike,
              size: 128.0,
              color: Colors.black12,
            ),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationDemo(),
      ),
    );
  }
}
