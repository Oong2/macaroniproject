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
                padding: const EdgeInsets.only(top: 300),
                child: Container(
                  width: 180,
                  height: 150,
                  margin: EdgeInsets.only(right: 0),
//                   padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/150px-Instagram_logo_2022.svg.png",
                          width: 50,
                          height: 50),
                      SingleChildScrollView(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/150px-Instagram_logo_2022.svg.png",
                                width: 50,
                                height: 50),
                            Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/150px-Instagram_logo_2022.svg.png",
                                width: 50,
                                height: 50),
                            Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/150px-Instagram_logo_2022.svg.png",
                                width: 50,
                                height: 50),
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
                          borderRadius: BorderRadius.circular(15.0),
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
                      borderRadius: BorderRadius.circular(15.0),
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
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            child: Text("로그인"),
                            margin: EdgeInsets.all(2),
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
