import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StatefulPage extends StatefulWidget {
  const StatefulPage({Key? key}) : super(key: key);

  @override
  _StatefulPageState createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {
  int number = 0;

  void tekanTombol() {
    // setState digunakan agar tampilan di layar berubah. karna jika tidak menggunakan setState maka tampilan angka tidak berubah meskipun logikannya benar
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Stateful'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              number.toString(),
              style: TextStyle(
                fontSize: 10 + number.toDouble(),
              ),
            ),
            ElevatedButton(
              onPressed: tekanTombol,
              child: Text('Tambah Bilangan'),
            ),
          ],
        ),
      ),
    );
  }
}
