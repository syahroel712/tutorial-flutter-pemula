import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StackAlignPage extends StatefulWidget {
  const StackAlignPage({Key? key}) : super(key: key);

  @override
  _StackAlignPageState createState() => _StackAlignPageState();
}

class _StackAlignPageState extends State<StackAlignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Stack & Align'),
      ),
      body: Stack(
        children: [
          // background

          Column(
            children: [
              Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.black12,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.black12,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          // listview dengan text
          ListView(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(80),
                    child: Text(
                      "Ini stack yang ditengah",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(80),
                    child: Text(
                      "Ini stack yang ditengah",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(80),
                    child: Text(
                      "Ini stack yang ditengah",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(80),
                    child: Text(
                      "Ini stack yang ditengah",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(80),
                    child: Text(
                      "Ini stack yang ditengah",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          // button ditengah
          Align(
            // alignment: Alignment.bottomCenter,
            alignment: Alignment(0, 0.9),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("My Button"),
              style: ElevatedButton.styleFrom(
                primary: Colors.indigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
