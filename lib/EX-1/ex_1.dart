import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Custom buttons")),
      body: Center(
        child: SizedBox(width: 400, height: 200, child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 5,
          children: [
            CustomeBtn(),
            CustomeBtn(),
            CustomeBtn(),
          ],
        )),
      ),
    ),
  ),
);

class CustomeBtn extends StatefulWidget {
  const new({super.key});

  @override
  State<CustomeBtn> createState() => _CustomeBtnState();
}

class _CustomeBtnState extends State<CustomeBtn> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected?  Colors.blue[50] : Colors.blue[500]),
      onPressed: () => {
        setState(() {
          isSelected = !isSelected;
        }),
      },
      child:  Center(
        child: Text( isSelected? "Not Selected" : "Selected" , style: TextStyle(
          color: isSelected ? Colors.black : Colors.white
        ),)),
    );
  }
}
