import 'package:flutter/material.dart';



class BottomNavigationDemo extends StatefulWidget {

  // @override
  //   State<StatefulWidget> createState(){
  //   return _BottomNavigationDemoState();
  // }

  @override
  _BottomNavigationDemoState createState() => _BottomNavigationDemoState();
}

class _BottomNavigationDemoState extends State<BottomNavigationDemo> {

  int _currentIndex = 0;
  void _onTapHandler (int index){
    setState((){
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: "Explore",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: "History",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: "List",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "My",
        ),
      ],
    );
  }
}