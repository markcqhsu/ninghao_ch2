import 'package:intl/intl.dart';


//因為這個現在有版本問題所以就先PASS
//添加一個類, 使用int1裡面的message, 去添加一個可以被翻譯成多種語言的訊息
class NinghaoDemoLocalizations{
  String get title => Intl.message(
    "hello",
    name:"title",
    desc:"demo localizations",
  );

  String greet(String name) => Intl.message(
    "hello $name",
    name: "greet",
    desc: "greet someone",
    args: [name],

  );

}