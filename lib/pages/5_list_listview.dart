import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Listview'),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    widgets.add(Text(
                      'Data ke ' + counter.toString(),
                      style: TextStyle(fontSize: 25),
                    ));
                    counter++;
                  });
                },
                child: Text('Tambah Data'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    widgets.removeLast();
                    counter--;
                  });
                },
                child: Text('Hapus Data'),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgets,
          )
        ],
      ),
    );
  }
}
