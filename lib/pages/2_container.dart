import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Container'),
      ),
      body: Container(
        color: Colors.red,
        margin: EdgeInsets.all(10),
        // padding: EdgeInsets.all(10),
        padding: EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.amber,
                    Colors.blue,
                  ])),
        ),
      ),
    );
  }
}
