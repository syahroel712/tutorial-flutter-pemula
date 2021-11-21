import 'package:flutter/material.dart';

class TextfieldPage extends StatefulWidget {
  const TextfieldPage({Key? key}) : super(key: key);

  @override
  _TextfieldPageState createState() => _TextfieldPageState();
}

class _TextfieldPageState extends State<TextfieldPage> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();
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
            // textfield decoration
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.lightBlue[50],
                filled: true,
                icon: Icon(Icons.account_balance),
                prefixIcon: Icon(Icons.person),
                prefix: Container(width: 10, height: 10, color: Colors.red),
                // prefixText: "Name",
                // prefixStyle: TextStyle(
                //   color: Colors.blue,
                //   fontWeight: FontWeight.w500,
                // ),
                suffixIcon: Icon(Icons.person_add),
                labelText: "Nama lengkap",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w900,
                ),
                hintText: "Masukkan nama anda",
                hintStyle: TextStyle(
                  fontSize: 12,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onChanged: (value) {
                setState(() {});
              },
              controller: controller2,
            ),
            Text(controller2.text),
          ],
        ),
      ),
    );
  }
}
