import 'package:flutter/material.dart';
import 'package:sample_tab/second_view.dart';
import 'package:sample_tab/tab.dart';
import 'package:sample_tab/view1.dart';
import 'package:sample_tab/view2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: {
        // When we navigate to the "/" route, build the FirstScreen Widget
        '/': (context) => TabSampleView(),
        // When we navigate to the "/second" route, build the SecondScreen Widget
        '/second': (context) => SecondView(),
        '/view1': (context) => View1(),
        '/view2': (context) => View2(),
      },
    );
  }
}
