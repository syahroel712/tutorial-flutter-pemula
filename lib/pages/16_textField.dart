import 'package:flutter/material.dart';

class TextfieldPage extends StatefulWidget {
  const TextfieldPage({Key? key}) : super(key: key);

  @override
  _TextfieldPageState createState() => _TextfieldPageState();
}

class _TextfieldPageState extends State<TextfieldPage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Textfield'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              obscureText: true,
              maxLength: 5,
              onChanged: (value) {
                setState(() {});
              },
              controller: controller,
            ),
            Text(controller.text),
          ],
        ),
      ),
    );
  }
}
