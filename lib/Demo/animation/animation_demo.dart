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
    with TickerProviderStateMixin {
  late AnimationController animationDemoController;
  late Animation animation;
  late Animation animationColor;
  late CurvedAnimation curve;

  @override
  void initState() {
    super.initState();
    animationDemoController = AnimationController(
      // value: 32.0,//動畫的初始值
      // lowerBound: 32.0,
      // upperBound: 100.0,
      duration: Duration(milliseconds: 1000),
      vsync: this,
    ); //初始化animationDemoController的值

    curve = CurvedAnimation(
        parent: animationDemoController, curve: Curves.bounceOut);

    animation = Tween(begin: 32.0, end: 100.0).animate(curve);
    animationColor =
        ColorTween(begin: Colors.red, end: Colors.red[500]).animate(curve);

    //設定監聽器
    //因為設定了監聽器, 動畫值有變化, 就會重繪
    // animationDemoController.addListener(() {
    //   // print("${animationDemoController.value}");
    //   setState(() {
    //
    //   });
    // });

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
      child: AnimatedHeart(
        animations: [animation, animationColor],
        controller: animationDemoController,
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

//自己建立AnimatedWidget
class AnimatedHeart extends AnimatedWidget {
  final List animations;
  final AnimationController controller;

  AnimatedHeart({required this.animations, required this.controller})
      : super(listenable: controller);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.favorite),
      iconSize: animations[0].value,
      color: animations[1].value,
      onPressed: () {
        // animationDemoController.forward();
        switch (controller.status) {
          case AnimationStatus.completed:
            controller.reverse();
            break;
          default:
            controller.forward();
        }
      },
    );
  }
}
