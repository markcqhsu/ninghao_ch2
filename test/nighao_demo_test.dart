import 'package:flutter_0622_01/Demo/test_demo.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){

  test("should return hellp + something", (){
    var string = NinghaoTestDemo.greet("ninghao");
    expect(string, "hello ninghao");
  });
}