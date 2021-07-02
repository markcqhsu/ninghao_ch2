import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
    // fetchPost();
    final post = {
      //新增一個Post數據, 裡面對應的是Map的值
      "title": "hello",
      "description": "nice to meet you",
    };
    print(post["title"]); //map數據輸出方式
    print(post["description"]);

    final postJson = json.encode(post); //把map轉換成json
    print(postJson);
  }

  fetchPost() async {
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

class Post {
  final String title;
  final String description;

  Post(this.title,
      this.description,);

  Post.fromJson(Map json)
      : title = json["title"],
        description = json["description"];
}
