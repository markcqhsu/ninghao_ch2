import 'package:flutter/material.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Material Components"),
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          ListItem(
            title: "FloatingActionButton",
            page: FloatingActionButtonDemo(),
          ),
        ],
      ),
    );
  }
}

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _floaringActionButton = FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
      elevation: 0.0,
      //控制與下一層的高度
      backgroundColor: Colors.blue,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
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
      floatingActionButton: _floaringActionButtonExtended,
      // floatingActionButton: _floaringActionButton,
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    required this.title,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
