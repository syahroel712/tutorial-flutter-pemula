import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnonymousPage extends StatefulWidget {
  const AnonymousPage({Key? key}) : super(key: key);

  @override
  _AnonymousPageState createState() => _AnonymousPageState();
}

class _AnonymousPageState extends State<AnonymousPage> {
  // anonymous function berguna utuk menyingkat code program karena biasanya metoh dipanggil hnya sekali

  String message = 'Ini adalah text';

  // contoh dengan method biasa
  void tekanTombol() {
    setState(() {
      message = "Tombol sudah ditekan";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Anonymous Method'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message),
            ElevatedButton(
              onPressed: () {
                // dengan anonymous method
                setState(() {
                  message = "Tombol sudah ditekan";
                });
              },
              child: Text('Tekan Saya'),
            ),
          ],
        ),
      ),
    );
  }
}
