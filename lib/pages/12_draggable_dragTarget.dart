import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DraggablePage extends StatefulWidget {
  const DraggablePage({Key? key}) : super(key: key);

  @override
  _DraggablePageState createState() => _DraggablePageState();
}

class _DraggablePageState extends State<DraggablePage> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  Color? targetColor;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Draggable DragTarget'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Draggable<Color>(
                data: color1,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color1,
                    shape: StadiumBorder(),
                    elevation: 3,
                  ),
                ),
                childWhenDragging: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.grey,
                    shape: StadiumBorder(),
                    elevation: 0,
                  ),
                ),
                feedback: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color1.withOpacity(0.7),
                    shape: StadiumBorder(),
                    elevation: 3,
                  ),
                ),
              ),
              Draggable<Color>(
                data: color2,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color2,
                    shape: StadiumBorder(),
                    elevation: 3,
                  ),
                ),
                childWhenDragging: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.grey,
                    shape: StadiumBorder(),
                    elevation: 0,
                  ),
                ),
                feedback: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color2.withOpacity(0.7),
                    shape: StadiumBorder(),
                    elevation: 3,
                  ),
                ),
              ),
            ],
          ),
          DragTarget<Color>(
            onWillAccept: (value) => true,
            onAccept: (value) {
              isAccepted = true;
              targetColor = value;
            },
            builder: (context, candidate, rejected) {
              return (isAccepted)
                  ? SizedBox(
                      width: 100,
                      height: 100,
                      child: Material(
                        color: targetColor,
                        shape: StadiumBorder(),
                        elevation: 0,
                      ),
                    )
                  : SizedBox(
                      width: 100,
                      height: 100,
                      child: Material(
                        color: Colors.grey,
                        shape: StadiumBorder(),
                        elevation: 0,
                      ),
                    );
            },
          ),
        ],
      ),
    );
  }
}
