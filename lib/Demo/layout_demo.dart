import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //------Row Layout
      // child: Row(//孩子們會水平排列
      //   children: <Widget>[
      //     IconBadge(Icons.pool),
      //     IconBadge(Icons.beach_access),
      //     IconBadge(Icons.airplanemode_active),
      //   ],
      // ),

      //------Column Layout
      child: Column(
        //孩子們會水平排列
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          ConstrainedBoxDemo(),
          StackDemo(),
        ],
      ),
    );
  }
}

class ConstrainedBoxDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 200.0,
        maxWidth: 200.0,
      ),
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16.0 / 9.0,
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        SizedBox(
          width: 200.0,
          height: 300.0,
          child: Container(
            // alignment: Alignment(
            //   -1.0, 0.0
            // ),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        // IconBadge(Icons.pool),
        // IconBadge(Icons.beach_access, size: 64,),
        // IconBadge(Icons.airplanemode_active),
        SizedBox(
          height: 32.0,
        ),
        SizedBox(
          width: 100.0,
          height: 100.0,
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              // borderRadius: BorderRadius.circular(8.0),
              shape: BoxShape.circle,
              gradient: RadialGradient(colors: [
                Color.fromRGBO(7, 102, 255, 1.0),
                Color.fromRGBO(3, 54, 255, 1.0),
              ]),
            ),
            child: Icon(
              Icons.brightness_2,
              color: Colors.white,
              size: 32.0,
            ),
          ),
        ),
        Positioned(
          right: 20.0,
          top: 20.0,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 32.0,
          ),
        )
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size + 60,
      height: size + 60,
      color: const Color.fromRGBO(3, 53, 255, 1.0),
    );
  }
}
