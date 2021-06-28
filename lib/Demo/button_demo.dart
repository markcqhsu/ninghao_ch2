import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(
          onPressed: () {},
          child: Text("Button"),
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text("Button"),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Theme(
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
                // shape: BeveledRectangleBorder(
                //   borderRadius: BorderRadius.circular(5.0),
                // ),
                shape: StadiumBorder(),
              )),
          child: ElevatedButton(
            child: Text("Button2"),
            onPressed: () {},
          ),
        ),
        SizedBox(width: 3.0,),

        // ElevatedButton(
        //   style: ButtonStyle(
        //     overlayColor: MaterialStateProperty.resolveWith(
        //           (states) {
        //         return states.contains(MaterialState.pressed)
        //             ? Colors.red
        //             : null;
        //       },
        //     ),
        //   ),
        //   child: const Text(
        //     'Elevated Button',
        //     style: TextStyle(fontSize: 15),
        //   ),
        //   onPressed: (){},
        // ),
        ElevatedButton.icon(
          icon: Icon(Icons.add),
          label: Text("Button"),
          onPressed: () {},
          // splashColor: Colors.grey,
          // textColor: Theme.of(context).accentColor,
        ),
        // TextButton.icon(
        //   icon: Icon(Icons.add),
        //   label: Text("Button"),
        //   onPressed: () {},
        //   // splashColor: Colors.grey,
        //   // textColor: Theme.of(context).accentColor,
        // ),

        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.yellow,
          ),
          child: const Text(
            'Elevated Button',
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ),
        //------TextButton
        // TextButton(
        //   child: Text(
        //     "TextButton",
        //     style: TextStyle(
        //       fontSize: 15.0,
        //       color: Colors.blue,
        //     ),
        //   ),
        //   onPressed: () {},
        //   style: TextButton.styleFrom(
        //       primary: Colors.grey,
        //       backgroundColor: Colors.purple,
        //       onSurface: Colors.grey),
        // ),
      ],
    );

    final Widget outlinedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Theme(
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
                // shape: BeveledRectangleBorder(
                //   borderRadius: BorderRadius.circular(5.0),
                // ),
                shape: StadiumBorder(),
              )),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              side: BorderSide(width: 2, color: Colors.green),
            ),

            onPressed: () {},
            child: Text('OutlinedButton'),

          ),
        ),
        SizedBox(width: 3.0,),
        OutlinedButton.icon(
          icon: Icon(Icons.add),
          label: Text("Button"),
          onPressed: () {},
          // splashColor: Colors.grey,
          // textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget expandedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Expanded(
          // width: 130,
          child: OutlinedButton(
            onPressed: (){},
            child: Text("OutlinedButton"),
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
              textStyle: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
        SizedBox(width: 16.0,),
        Expanded(
          // width: 130,
          flex: 2,
          child: OutlinedButton(
            onPressed: (){},
            child: Text("OutlinedButton"),
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
              textStyle: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );

    final Widget buttonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Theme(data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
            )
        ), child: ButtonBar(
          children: [
            OutlinedButton(
              onPressed: (){},
              child: Text("OutlinedButton1"),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.teal,
                textStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            OutlinedButton(
              onPressed: (){},
              child: Text("OutlinedButton2"),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.teal,
                textStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),)
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("BottonDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            flatButtonDemo,
            raisedButtonDemo,
            outlinedButtonDemo,
            expandedButtonDemo,
            buttonBarDemo,
          ],
        ),
      ),
    );
  }
}