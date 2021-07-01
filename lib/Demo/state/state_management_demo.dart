import 'package:flutter/material.dart';
// import 'package:scoped_model/scoped_model.dart';

//------使用ScopedModel
// class StateManagementDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ScopedModel(
//       model: CounterModel(),
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("StateManagementDemo"),
//           elevation: 0.0,
//         ),
//         body: CounterWrapper(),
//         floatingActionButton: ScopedModelDescendant<CounterModel>(
//           rebuildOnChange: false,
//           builder: (context, _, model) => FloatingActionButton(
//             child: Icon(Icons.add),
//             onPressed: model.increaseCount,
//           ),
//         ),
//       ),
//     );
//   }
// }

//-----原本的------
// class StateManagementDemo extends StatefulWidget {
//
//   @override
//   _StateManagementDemoState createState() => _StateManagementDemoState();
// }

// class _StateManagementDemoState extends State<StateManagementDemo> {
//   int _count = 0;
//   void _increaseCount(){
//     setState(() {
//       _count+=1;
//       print(_count);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return CounterProvider(
//       count: _count,
//       increaseCount: _increaseCount,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("StateManagementDemo"),
//           elevation: 0.0,
//         ),
//         body: CounterWrapper(),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.add),
//           onPressed: _increaseCount,
//         ),
//       ),
//     );
//   }
// }

// class CounterWrapper extends StatelessWidget {
//   // final int count;//從父被接受參數
//   // final VoidCallback increaseCount;//從父輩接受回調
//   // CounterWrapper(this.count, this.increaseCount);
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Counter(),
//     );
//   }
// }

// class Counter extends StatelessWidget {
  //因為透過inheritted Widget所以都不需要這樣傳遞參數
  // final int count;//從父被接受參數
  // final VoidCallback increaseCount;//從父輩接受回調
  // Counter(this.count, this.increaseCount);

  // @override
  // Widget build(BuildContext context) {
  //   final int count = CounterProvider.of(context).count;
  //   final VoidCallback increaseCount = CounterProvider.of(context).increaseCount;
  //   return ActionChip(
  //     label: Text("$count"),//因為是內部參數, 所以加上_
  //     onPressed:  increaseCount,
  //   );
  // }

  //------使用ScopedModel------
  // @override
  // Widget build(BuildContext context) {
  //   return ScopedModelDescendant<CounterModel>(
  //       builder: (context, _, model) => ActionChip(
  //             label: Text("${model.count}"),
  //             onPressed: model.increaseCount,
  //           ));
  // }
// }

// class StateManagementDemo extends StatelessWidget {
//   int count = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("StateManagementDemo"),
//         elevation: 0.0,
//       ),
//       body: Center(
//         child: Chip(
//           label: Text("$count"),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: (){
//           count+=1;
//           print(count);
//         },
//       ),
//     );
//   }
// }

class CounterProvider extends InheritedWidget {
  final int count;
  final VoidCallback increaseCount;
  final Widget child;

  CounterProvider({
    required this.count,
    required this.increaseCount,
    required this.child,
  }) : super(child: child);

  static CounterProvider of(BuildContext context) {
    final CounterProvider? result =
        context.dependOnInheritedWidgetOfExactType<CounterProvider>();
    assert(result != null, 'No CounterProvider found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(CounterProvider old) {
    return true;
  }
}

// class CounterModel extends Model {
//   int _count = 0;
//
//   int get count => _count;
//
//   void increaseCount() {
//     _count += 1;
//     notifyListeners();
//   }
// }
