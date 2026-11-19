import 'package:flutter/material.dart';

class Exercise2 extends StatelessWidget {
  const Exercise2({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: const Text('Favorite cards'),
    ),
    body: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 10,
        children: [FavoriteCard(), FavoriteCard(), FavoriteCard()],
      ),
    ),
  );
}

class FavoriteCard extends StatefulWidget {
  const new({super.key});

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 235, 231, 231),
        borderRadius: BorderRadius.circular(10),
      ),

      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Title",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                  Text("description"),
                ],
              ),
              IconButton(
                onPressed: () => {
                  setState(() {
                    isClick = !isClick;
                  }),
                },
                icon: Icon(Icons.favorite , 
                color: isClick? Colors.black : Colors.red,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
