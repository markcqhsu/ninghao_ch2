import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _floaringActionButton = FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
      elevation: 0.0,
      //控制與下一層的高度
      backgroundColor: Colors.blue,
      // shape: BeveledRectangleBorder(
      //   borderRadius: BorderRadius.circular(30.0),
      // ),
    );

    final Widget _floaringActionButtonExtended = FloatingActionButton.extended(
      onPressed: () {},
      icon: Icon(Icons.add),
      label: Text("add"),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("FlloatingActionButtonDemo"),
        elevation: 0.0,
      ),
      // floatingActionButton: _floaringActionButtonExtended,
      floatingActionButton: _floaringActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}