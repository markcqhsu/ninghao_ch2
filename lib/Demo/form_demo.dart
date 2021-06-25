import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black,
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  String username = "", password = "";
  bool autovalidate = false;

  void submitRegisterForm() {
    if (registerFormKey.currentState!.validate()) {
      registerFormKey.currentState!.save();
      debugPrint("username: $username");
      debugPrint("password: $password");

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Regestering..."),
      ));

      // Scaffold.of(context).showSnackBar(
      //   SnackBar(
      //     content: Text("Regestering..."),
      //   ),
      // );
    } else {
      setState(() {
        autovalidate = true;
      });
    }
  }

  String? vaildateUsername(value) {
    if (value.isEmpty) {
      return "Username is required.";
    }
    return null;
  }

  String? vaildatePassword(value) {
    if (value.isEmpty) {
      return "Password is required.";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: "Username",
              helperText: "",
            ),
            onSaved: (value) {
              username = value!;
            },
            validator: vaildateUsername,
            // autovalidate: true,
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          TextFormField(
            obscureText: true,
            //如果要遮蔽密碼的話
            decoration: InputDecoration(
              labelText: "Password",
              helperText: "",
            ),
            onSaved: (value) {
              password = value!;
            },
            validator: vaildatePassword,
            autovalidate: autovalidate,
            // autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          SizedBox(
            height: 32.0,
          ), //在表單和按鈕中間增加一個間格
          Container(
            width: double.infinity,
            child: ElevatedButton(
              child: const Text("Register",style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).colorScheme.secondary,
                textStyle: TextStyle(fontSize: 20),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 25),
                elevation: 1.0,//陰影效果
              ),
              onPressed: () {
                submitRegisterForm();
              },
            ),
            // child: RaisedButton(
            //   color: Theme.of(context).colorScheme.secondary,
            //   child: Text(
            //     "Register",
            //     style: TextStyle(color: Colors.white),
            //   ),
            //   elevation: 0.0,
            //   onPressed: () {
            //     submitRegisterForm();
            //   },
            // ),
          ),
        ],
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // textEditingController.text= "hi";//設定textEditingController 預設的值
    textEditingController.addListener(() {
      debugPrint("input: ${textEditingController.text}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      // onChanged: (value){
      //   debugPrint("input: $value");
      // },
      onSubmitted: (value) {
        debugPrint("submit: $value");
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: "Title",
        hintText: "Enter the post title",
        // border: InputBorder.none,//輸入框的底線
        // border: OutlineInputBorder(),//輸入框的外框線
        filled: true,
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:
          Theme.of(context).colorScheme.secondary, //顏色會根據main裏面ThemeData定義的顏色
    );
  }
}
