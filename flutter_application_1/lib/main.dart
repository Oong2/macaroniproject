import 'package:flutter/material.dart';
import 'story1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Container(
                  width: 180,
                  height: 150,
                  margin: EdgeInsets.only(right: 0),
//                   padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Image.asset(
                          "assets/images/rogo.png", //MACARONI 로고
                          fit: BoxFit.fill,
                        ),
                      ),
                      SingleChildScrollView(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/rogo1.png",
                                width: 50, height: 50),
                            Image.asset("assets/images/rogo2.png",
                                width: 50, height: 50),
                            Image.asset("assets/images/rogo3.png",
                                width: 50, height: 50),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(""),
              Padding(
                padding:
                    const EdgeInsets.only(left: 120, right: 120, bottom: 10),
                child: Container(
                  margin: EdgeInsets.only(top: 0),
                  // 말진~
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        labelText: ("아이디")),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 120, right: 120, bottom: 25),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    labelText: ("비밀번호"),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => story1()));
                },
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: Builder(builder: (context) {
                  return Column(
                    children: [
                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Container(
                            child: Text("로그인"),
                            margin: EdgeInsets.all(0),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
                //로그인 버튼과 비밀번호 창을 띄움
              )
            ],
          ),
        ),
      ),
    );
  }
}
