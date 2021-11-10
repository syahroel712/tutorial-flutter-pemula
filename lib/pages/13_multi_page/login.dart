import 'package:flutter/material.dart';
import 'package:flutter_study/pages/13_multi_page/home.dart';

class LoginMultiPage extends StatefulWidget {
  const LoginMultiPage({Key? key}) : super(key: key);

  @override
  _LoginMultiPageState createState() => _LoginMultiPageState();
}

class _LoginMultiPageState extends State<LoginMultiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Login'),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return HomeMultiPage();
            }));
          },
        ),
      ),
    );
  }
}
