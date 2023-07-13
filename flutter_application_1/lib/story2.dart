import 'package:flutter/material.dart';
import 'story3.dart';

// import 'package:flutter_application_1/main.dart';
void main() {
  runApp(story2());
}

class story2 extends StatelessWidget {
  const story2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("name"),
                  Container(
                    margin: const EdgeInsets.only(left: 0.0),
                    width: 60,
                    child: Text(
                      "이동건",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment(0.0, 0.0),
                    width: 300,
                    height: 600,
                    child: Text(
                      "31세  \nENFP  \n\nMacAroni Fighting!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Image.asset("name")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
