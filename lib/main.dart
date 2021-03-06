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
import 'package:flutter_study/pages/10_image.dart';
import 'package:flutter_study/pages/11_spacer.dart';
import 'package:flutter_study/pages/12_draggable_dragTarget.dart';
import 'package:flutter_study/pages/13_multi_page/login.dart';
import 'package:flutter_study/pages/14_appbar_gradasi.dart';
import 'package:flutter_study/pages/15_card.dart';
import 'package:flutter_study/pages/16_textField.dart';
import 'package:flutter_study/pages/18_mediaQuery.dart';
import 'package:flutter_study/pages/19_inkwell.dart';

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
    '/10_image': (_) => ImagePage(),
    '/11_spacer': (_) => SpacerPage(),
    '/12_draggable': (_) => DraggablePage(),
    '/13_multi_page': (_) => LoginMultiPage(),
    '/14_appbar': (_) => AppBarPage(),
    '/15_card': (_) => CardPage(),
    '/16_textfield': (_) => TextfieldPage(),
    '/18_mediaquery': (_) => MediaQueryPage(),
    '/19_inkwell': (_) => InkWellPage(),
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
