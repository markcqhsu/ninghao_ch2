import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //   child: Text("header".toUpperCase()),
          //   decoration: BoxDecoration(
          //     color: Colors.grey[100],
          //   ),
          // ),
          UserAccountsDrawerHeader(
            accountName: Text(
              "好玩",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text("www@aaa.cc"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://www.honchuan.com/storage/images/products/01-plastic-cap/1810-28-c-bc-31/1810-bac-a-n.jpg"),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                image: NetworkImage(
                    "https://www.honchuan.com/storage/encoded_images/thumbnails/about/mian-picture/history-2.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.yellow.withOpacity(0.5), BlendMode.hardLight),
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Message",
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.message,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              "Favorite",
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.favorite,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              "Settings",
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.settings,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
