import 'dart:async';

import 'package:flutter/material.dart';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StreamDemo"),
        elevation: 0.0,
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  late StreamSubscription _streamDemoSubscription;
  late StreamController<String> _streamDemo;
  late StreamSink _sinkDemo;

  @override
  void dispose() {
    _streamDemo.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    print("Create a Stream. 創建Stream 之前");
    // Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    // _streamDemo = StreamController<String>();
    _streamDemo = StreamController.broadcast();
    _sinkDemo = _streamDemo.sink;

    print("Start listening on a stream. 監聽/訂閱 Stream");
    _streamDemoSubscription = _streamDemo.stream.listen(
      onData,
      onError: onError,
      onDone: onDone,
    );

    _streamDemoSubscription = _streamDemo.stream.listen(
      onDataTwo,
      onError: onError,
      onDone: onDone,
    );

    print("Initialize complete");
  }

  void onDone() {
    print("Done!");
  }

  void onError(error) {
    print("Error: $error");
  }

  void onData(String data) {
    print("$data");
  }

  void onDataTwo(String data) {
    print("onDataTwo: $data");
  }

  void _pauseStream(){
    print("Pause subscription");
    _streamDemoSubscription.pause();
  }
  void _resumeStream(){
    print("Resume subscription");
    _streamDemoSubscription.resume();
  }
  void _cancelStream(){
    print("Cancel subscription");
    _streamDemoSubscription.cancel();
  }

  void _addDataToStream() async{
    print("Add data to Stream");
    String data = await fetchData();
    // _streamDemo.add(data);
    _sinkDemo.add(data);
  }


  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 5)); //在這裡延遲三秒鐘
    // throw "Something happeded";
    return "Hello~";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: _addDataToStream,
              child: Text("Add"),
            ),
            TextButton(
              onPressed: _pauseStream,
              child: Text("pause"),
            ),
            TextButton(
              onPressed: _resumeStream,
              child: Text("Resume"),
            ),
            TextButton(
              onPressed: _cancelStream,
              child: Text("Cancel"),
            ),
          ],
        ),
      ),
    );
  }
}
