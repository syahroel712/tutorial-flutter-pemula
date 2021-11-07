import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar AnimatedContainer'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {});
          },
          child: AnimatedContainer(
            color: Color.fromARGB(
              255,
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
            ),
            duration: Duration(seconds: 1),
            width: 100.0 + random.nextInt(201),
            height: 100.0 + random.nextInt(201),
          ),
        ),
      ),
    );
  }
}
