import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_study/pages/home.dart';
import 'package:flutter_study/pages/1_column_row.dart';
import 'package:flutter_study/pages/2_container.dart';
import 'package:flutter_study/pages/3_stateful.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final router = <String, WidgetBuilder>{
    '/': (_) => HomePage(),
    '/1_column_row': (_) => ColumnRowPage(),
    '/2_container': (_) => ContainerPage(),
    '/3_stateful': (_) => StatefulPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Belajar Flutter",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: router,
      initialRoute: '/',
    );
  }
}
