import 'package:flutter/material.dart';
import 'button_demo.dart';
import 'floating_action_button.dart';
import 'popup_menu_button_demo.dart';

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
            title: "PopupMenuButton",
            page: PopupMenuButtonDemo(),
          ),
          ListItem(
            title: "Button",
            page: BottonDemo(),
          ),
          ListItem(
            title: "FloatingActionButton",
            page: FloatingActionButtonDemo(),
          ),
        ],
      ),
    );
  }
}




class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              children: [],
            )
          ],
        ),
      ),
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
