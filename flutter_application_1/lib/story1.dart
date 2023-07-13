import 'package:flutter/material.dart';

void main() {
  runApp(story1());
}

class story1 extends StatelessWidget {
  const story1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("스토리1"),
        ),
      ),
    );
  }
}
