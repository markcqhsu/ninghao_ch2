import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc _counterBloc = CounterProvider.of(context).bloc;

    return Center(
      child: StreamBuilder(
        initialData: 0,
        stream: _counterBloc.count,
        builder: (context, snapshot){
          return ActionChip(
            label: Text("${snapshot.data}"),
            onPressed: (){
              _counterBloc.counter.add(1);

            },
          );
        },
      ),
    );
  }
}

class CounterActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc _counterBloc = CounterProvider.of(context).bloc;

    return FloatingActionButton(
      onPressed: () {
        // _counterBloc.log();
        _counterBloc.counter.add(1);
      },
      child: Icon(Icons.add),
    );
  }
}

class CounterProvider extends InheritedWidget {
  final Widget child;
  final CounterBloc bloc;

  CounterProvider({
    required this.child,
    required this.bloc,
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

class CounterBloc {
  int _count = 0;


  final _counterActionController = StreamController<int>();
  StreamSink<int> get counter => _counterActionController.sink;//這樣我們的小部件就可以使用sink

  final _counterController = StreamController<int>();
  Stream<int> get count => _counterController.stream;

  CounterBloc(){
    _counterActionController.stream.listen(onData);
  }

  void onData(int data){
    print("$data");
    _count = data + _count;
    _counterController.add(_count);
  }

  void disponse(){
    _counterActionController.close();
  }


  void log() {
    print("Bloc");
  }
}
