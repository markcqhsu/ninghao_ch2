import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class RxDartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RxDart Demo"),
        elevation: 0.0,
      ),
      body: RxDartDemoHome(),
    );
  }
}

class RxDartDemoHome extends StatefulWidget {
  @override
  _RxDartDemoHomeState createState() => _RxDartDemoHomeState();
}

class _RxDartDemoHomeState extends State<RxDartDemoHome> {
  late PublishSubject<String> _textFieldSubject;

  @override
  void initState() {
    super.initState();
    _textFieldSubject = PublishSubject<String>();
    _textFieldSubject.listen((data) => print(data));


    // PublishSubject<String> _subject = PublishSubject<String>();
    // BehaviorSubject<String> _subject = BehaviorSubject<String>();
    // ReplaySubject<String> _subject = ReplaySubject<String>(maxSize: 2);
    //
    //
    // _subject.add("Hello");
    // _subject.add("Hello2");
    // _subject.add("Hi");
    // _subject.listen((data) =>print("listen 1: $data"));
    // _subject.listen((data) =>print("listen 2: ${data.toUpperCase()}"));
    //

    // _subject.listen((data) { print("listen 2: ${data.toUpperCase()}");});

    // _subject.close();
  }

  @override
  void dispose() {
    super.dispose();
    _textFieldSubject.close();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(primaryColor: Colors.black),
      child: TextField(
        onChanged: (value){
          _textFieldSubject.add("input: $value");
        },
        onSubmitted: (value){
          _textFieldSubject.add("submit: $value");
        },
        decoration: InputDecoration(labelText: "Title", filled: true),
      ),
    );
  }
}
