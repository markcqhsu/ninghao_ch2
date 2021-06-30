import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {

  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StepperDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Theme(
              data: Theme.of(context).copyWith(
                primaryColor: Colors.black,
              ),
              child: Stepper(
                currentStep: _currentStep,//控制當前打開的步驟
                onStepTapped: (int value){
                  setState(() {
                    _currentStep = value;
                  });
                },//點擊步驟數字執行,
                onStepContinue: (){
                  setState(() {
                    _currentStep < 2? _currentStep +=1: _currentStep = 0;
                  });
                },
                onStepCancel: (){
                  setState(() {
                    _currentStep >0? _currentStep -=1: _currentStep = 0;
                  });
                },
                steps: [
                  Step(
                    title: Text("Login"),
                    subtitle: Text("Login first"),
                    content: Text("Magna exercitation duis non sint en"),
                    isActive: _currentStep == 0, //表示激活狀態

                  ),
                  Step(
                    title: Text("Choose Plan"),
                    subtitle: Text("Choose your plan"),
                    content: Text("Magna exercitation duis non sint en"),
                    isActive: _currentStep == 1,//表示激活狀態

                  ),
                  Step(
                    title: Text("Confirm payment"),
                    subtitle: Text("Confirm your payment method"),
                    content: Text("Magna exercitation duis non sint en"),
                    isActive: _currentStep == 2, //表示激活狀態

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
