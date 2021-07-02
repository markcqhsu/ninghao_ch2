import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimationDemo"),
        elevation: 0.0,
      ),
      body: AnimationDemoHome(),
    );
  }
}

class AnimationDemoHome extends StatefulWidget {

  @override
  _AnimationDemoHomeState createState() => _AnimationDemoHomeState();
}

class _AnimationDemoHomeState extends State<AnimationDemoHome>
with TickerProviderStateMixin{
  late AnimationController animationDemoController;
  @override
  void initState() {
    super.initState();
    animationDemoController = AnimationController(
      value: 32.0,//動畫的初始值
      lowerBound: 32.0,
      upperBound: 100.0,
      duration: Duration(milliseconds: 3000),
      vsync: this,

    );//初始化animationDemoController的值

    //設定監聽器
    animationDemoController.addListener(() {
      // print("${animationDemoController.value}");
      setState(() {

      });
    });

    //監聽動畫運行狀態
    animationDemoController.addStatusListener((AnimationStatus status) {
        print(status);
    });
    // 開始播放動畫
    // animationDemoController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationDemoController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        icon: Icon(Icons.favorite),
        iconSize: animationDemoController.value,
        onPressed: (){
          // animationDemoController.forward();
          switch(animationDemoController.status){
            case AnimationStatus.completed:
              animationDemoController.reverse();
              break;
            default:
              animationDemoController.forward();
          }
        },
      ),
      // child: ActionChip(
      //   label: Text("${animationDemoController.value}"),
      //   onPressed: (){
      //     animationDemoController.forward();
      //   },
      // ),
    );
  }
}
