import 'package:flutter/material.dart';
import 'story2.dart';

// import 'package:flutter_application_1/main.dart';
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
                      "김기호",
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
                      "26세  \nENTJ  \n\n다들 힘내세요!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Image.asset("name"),
                  ElevatedButton(
                    child: Text("Go to Screen B Page"),
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => story2()));
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
