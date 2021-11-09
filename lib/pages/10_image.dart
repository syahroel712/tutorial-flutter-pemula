import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Image'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.amber,
              width: 200,
              height: 200,
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(3),
              child: Image(
                image: NetworkImage(
                    'https://cdns.klimg.com/bola.net/library/upload/21/2021/11/645x430/smith-rowe-1_0035f1d.jpg'),
                fit: BoxFit.contain,
                repeat: ImageRepeat.noRepeat,
              ),
            ),
            Container(
              color: Colors.yellow,
              width: 200,
              height: 200,
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(3),
              child: Image(
                image: AssetImage("assets/images/foto.jpg"),
                fit: BoxFit.cover,
                repeat: ImageRepeat.noRepeat,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
