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
    fetchPosts()
    .then((value) => print(value));

    // final post = {  //新增一個Post數據, 裡面對應的是Map的值
    //   "title":"hello",
    //   "description":"nice to meet you",
    // };
    // print(post["title"]);//map數據輸出方式
    // print(post["description"]);
    //
    // final postJson = json.encode(post);//把map轉換成json
    // print(postJson);
    //
    // final postJsonConverted = json.decode(postJson); //把Json轉換為Map
    // print(postJsonConverted["title"]);
    // print(postJsonConverted["description"]);
    // print(postJsonConverted["description"]);
    // print(postJsonConverted is Map);
    //
    // final postModel = Post.fromJson(postJsonConverted);//現在這個postModel 是一個post 類型的數據
    // print("title: ${postModel.title}, description: ${postModel.description} ");
    //
    // print("${json.encode(postModel)}");//輸出一個使用Josn.encode轉換之後的model
  }

  Future<List<Post>> fetchPosts() async{
    var url = Uri.parse("https://resources.ninghao.net/demo/posts.json");
    final response = await http.get(url);
    // print("statusCode: ${response.statusCode}");
    // print("body: ${response.body}");
    if (response.statusCode ==200){
      final responseBody = json.decode(response.body);
      List<Post> posts = responseBody["posts"]
      .map<Post>((item)=>Post.fromJson(item))//利用map去處理一下列表數據, 返回post, 當前項目叫做item, 把map轉換成post
      .toList();//把項目轉換成列表

      return posts;

    }else{
      throw Exception("Failed to fetch posts.");
    }

}

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Post {
  final int id;
  final String title;
  final String description;
  final String author;
  final String imageUrl;

  Post(this.title,
      this.description, this.id, this.author, this.imageUrl,);

  Post.fromJson(Map json)
      : id = json["id"],
        title = json["title"],
        description = json["description"],
        author = json["author"],
        imageUrl = json["imageUrl"];

  Map toJson()=>{
    "title":title,
    "description":description,
  };
}
