import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColumnRowPage extends StatelessWidget {
  const ColumnRowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Column dan Row'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Ini column 1'),
          Text('Ini column 2'),
          Text('Ini column 3'),
          Text('Ini column 4'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Ini row 1'),
              Text('Ini row 2'),
              Text('Ini row 3'),
              Text('Ini row 4'),
            ],
          )
        ],
      ),
    );
  }
}
