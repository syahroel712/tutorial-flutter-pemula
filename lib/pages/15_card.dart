import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
        title: Text('Belajar Card'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            buildCard(Icons.account_box, 'Account Box'),
            buildCard(Icons.account_balance, 'Balance'),
          ],
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 5,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            child: Icon(iconData),
          ),
          Text(text),
        ],
      ),
    );
  }
}
