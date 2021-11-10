import 'package:flutter/material.dart';

class DetailMultiPage extends StatefulWidget {
  const DetailMultiPage({Key? key}) : super(key: key);

  @override
  _DetailMultiPageState createState() => _DetailMultiPageState();
}

class _DetailMultiPageState extends State<DetailMultiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Multipage'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Ini halaman detail'),
            ElevatedButton(
              child: Text('Back'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
