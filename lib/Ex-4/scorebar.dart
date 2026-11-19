import 'package:flutter/material.dart';

class Scorebar extends StatefulWidget {
  final String course;
  const Scorebar({super.key, required this.course});

  @override
  State<Scorebar> createState() => _ScorebarState();
}

class _ScorebarState extends State<Scorebar> {
  int progessBarWidth = 300;
  int bar = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "My Score in ${widget.course}",
              style: TextStyle(fontSize: 20),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (bar > 0) {
                        bar -= 30;
                      }
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => {
                    setState(() {
                      if (bar != progessBarWidth) {
                        bar += 30;
                      }
                    }),
                  },
                ),
              ],
            ),

            Container(
              width: progessBarWidth as double,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Container(
                  width: bar as double,
                  decoration: BoxDecoration(
                    color: bar != progessBarWidth ? Colors.amber : Colors.green,

                    borderRadius: bar != progessBarWidth
                        ? BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          )
                        : BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
