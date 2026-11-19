import 'package:flutter/material.dart';
import 'package:homework_w7/EX-3/ex_3_start.dart';
import 'package:homework_w7/Ex-4/scorebar.dart';

import 'EX-2/ex_2_step_1_start.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.green,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 20,

          children: [
            Scorebar(course: "Flutter") , 
            Scorebar(course: "Game Dev"),
            Scorebar(course: "Cyber"),

          ],
        ),
      ),
    ),
  ),
);
