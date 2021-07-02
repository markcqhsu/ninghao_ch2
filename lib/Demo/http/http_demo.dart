import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class HttpDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HttpDemo"),
        elevation: 0.0,
      ),
      body: HttpDemoHome(),
    );
  }
}

class HttpDemoHome extends StatefulWidget {

  @override
  _HttpDemoHomeState createState() => _HttpDemoHomeState();
}

class _HttpDemoHomeState extends State<HttpDemoHome> {

  @override
  void initState() {
    super.initState();
    fetchPost();
  }

  fetchPost() async{
    var url = Uri.parse("https://resources.ninghao.net/demo/posts.json");
    final response = await http.get(url);
    print("statusCode: ${response.statusCode}");
    print("body: ${response.body}");

}

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
