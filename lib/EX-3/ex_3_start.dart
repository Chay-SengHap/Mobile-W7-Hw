import 'package:flutter/material.dart';

List<String> images = [
  "lib/EX-3/assets/bird.jpg",
  "lib/EX-3/assets/bird2.jpg",
  "lib/EX-3/assets/insect.jpg",
  "lib/EX-3/assets/girl.jpg",
  "lib/EX-3/assets/man.jpg",
];

class Exercise3 extends StatefulWidget {
  const new({super.key});

  @override
  State<Exercise3> createState() => _Exercise3State();
}

class _Exercise3State extends State<Exercise3> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text('Image viewer'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_before),
            tooltip: 'Go to the previous image',
            onPressed: () => {
              setState(() {
                if (currentIndex == 0) {
                  currentIndex = images.length - 1;
                } else {
                  currentIndex -= 1;
                }
              }),
            },
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next image',
              onPressed: () => {
                setState(() {
                  if (currentIndex == images.length - 1) {
                    currentIndex = 0;
                  } else {
                    currentIndex += 1;
                  }
                }),
              },
            ),
          ),
        ],
      ),
      body: Image.asset(images[currentIndex]),
    );
  }
}
