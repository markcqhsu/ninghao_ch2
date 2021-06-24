import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Home"),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text("About"),
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (BuildContext context) => Page(
                //     title: "About title",
                //   ),
                // ));
                //------Navigator.pushName------
                Navigator.pushNamed(context, "/about");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  final String title;
  // Page2({String this.title});

  Page2({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }

}
