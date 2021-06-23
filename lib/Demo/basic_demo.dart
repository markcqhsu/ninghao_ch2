import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[100],
      //------BoxDecoration 影像-------
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://www.honchuan.com/storage/images/products/01-plastic-cap/1810-28-c-bc-31/1810-bac-a-n.jpg"),
          alignment: Alignment.topCenter,
          // repeat: ImageRepeat.repeat,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.indigoAccent.withOpacity(0.5), BlendMode.hardLight),
        ),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.pool,
              size: 32.0,
              color: Colors.white,
            ),
            // color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            //外邊距
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(
                  color: Colors.lightBlue,
                  width: 3.0,
                  style: BorderStyle.solid,
              ),
              // borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  offset: Offset(6.0, 7.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 1.0,
                  spreadRadius: -3.0,//陰影擴散程度
                ),
              ],
              shape: BoxShape.circle,

              //------線性漸變效果------
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),

              //------鏡像漸變效果------
              // gradient: RadialGradient(
              //   colors: [
              //     Color.fromRGBO(7, 102, 255, 1.0),
              //     Color.fromRGBO(3, 28, 128, 1.0),
              //   ],
              // ),

              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(64.0),
              //   bottomLeft: Radius.circular(64.0),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: const TextSpan(
      text: "測試",
      style: TextStyle(
        color: Colors.deepPurpleAccent,
        fontSize: 34.0,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w100,
      ),
      children: [
        TextSpan(
            text: ".net",
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.grey,
            ))
      ],
    ));
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(fontSize: 16.0);

  final String _author = "李白";
  final String _title = "將進酒";

  @override
  Widget build(BuildContext context) {
    return Text(
      "<$_title> - $_author. 人生得意須盡歡，莫使金樽空對月。 天生我材必有用，千金散盡還復來。 烹羊宰牛且爲樂，會須一飲三百杯。",
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3, //最多顯示三行文字
      overflow: TextOverflow.ellipsis, //省略
    );
  }
}
