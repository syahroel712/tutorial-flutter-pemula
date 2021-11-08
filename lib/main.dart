import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_study/pages/home.dart';
import 'package:flutter_study/pages/1_column_row.dart';
import 'package:flutter_study/pages/2_container.dart';
import 'package:flutter_study/pages/3_stateful.dart';
import 'package:flutter_study/pages/4_anonymous_method.dart';
import 'package:flutter_study/pages/5_list_listview.dart';
import 'package:flutter_study/pages/6_textstyle.dart';
import 'package:flutter_study/pages/7_animatedContainer_gestureDetector.dart';
import 'package:flutter_study/pages/8_flexible.dart';
import 'package:flutter_study/pages/9_stack_align.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final router = <String, WidgetBuilder>{
    '/': (_) => HomePage(),
    '/1_column_row': (_) => ColumnRowPage(),
    '/2_container': (_) => ContainerPage(),
    '/3_stateful': (_) => StatefulPage(),
    '/4_anonymous': (_) => AnonymousPage(),
    '/5_listview': (_) => ListViewPage(),
    '/6_textstyle': (_) => TextStylePage(),
    '/7_animated_container': (_) => AnimatedContainerPage(),
    '/8_flexible': (_) => FlexiblePage(),
    '/9_stack_align': (_) => StackAlignPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tutorial Flutter",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: router,
      initialRoute: '/',
    );
  }
}
