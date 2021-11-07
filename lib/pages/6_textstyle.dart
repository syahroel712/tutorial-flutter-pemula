import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextStylePage extends StatefulWidget {
  const TextStylePage({Key? key}) : super(key: key);

  @override
  _TextStylePageState createState() => _TextStylePageState();
}

class _TextStylePageState extends State<TextStylePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar TextStyle'),
      ),
      body: Column(
        children: [
          Text(
            'ini text Poppins',
            style: TextStyle(
              fontFamily: 'Poppins-SemiBold',
              fontStyle: FontStyle.italic,
              fontSize: 25,
              decoration: TextDecoration.underline,
              decorationColor: Colors.blue,
              decorationThickness: 5,
              decorationStyle: TextDecorationStyle.wavy,
            ),
          ),
          Text(
            'ini text Poppins',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
