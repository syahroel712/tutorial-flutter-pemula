import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SpacerPage extends StatefulWidget {
  const SpacerPage({Key? key}) : super(key: key);

  @override
  _SpacerPageState createState() => _SpacerPageState();
}

class _SpacerPageState extends State<SpacerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Spacer'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(
              flex: 1,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.red,
            ),
            Spacer(
              flex: 2,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.green,
            ),
            Spacer(
              flex: 3,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.blue,
            ),
            Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
