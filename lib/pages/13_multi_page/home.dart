import 'package:flutter/material.dart';
import 'package:flutter_study/pages/13_multi_page/detail.dart';

class HomeMultiPage extends StatefulWidget {
  const HomeMultiPage({Key? key}) : super(key: key);

  @override
  _HomeMultiPageState createState() => _HomeMultiPageState();
}

class _HomeMultiPageState extends State<HomeMultiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Multipage'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('ini halaman home'),
            ElevatedButton(
              child: Text('Detail Page'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailMultiPage();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
