import 'package:flutter/material.dart';

class MediaQueryPage extends StatefulWidget {
  const MediaQueryPage({Key? key}) : super(key: key);

  @override
  _MediaQueryPageState createState() => _MediaQueryPageState();
}

class _MediaQueryPageState extends State<MediaQueryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Media Query"),
      ),
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(
              children: generateContainers,
            )
          : Row(
              children: generateContainers,
            ),
    );
  }

  List<Widget> get generateContainers {
    return <Widget>[
      Container(
        color: Colors.blue,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.red,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.green,
        width: 100,
        height: 100,
      ),
    ];
  }
}
