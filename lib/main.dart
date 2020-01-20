import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magic 8 Ball',
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int getRandomNumber() {
    return math.Random().nextInt(5) + 1; // between 1 and 5
  }

  int number;

  @override
  void initState() {
    super.initState();
    number = getRandomNumber();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4CA2F5),
      appBar: AppBar(
        backgroundColor: Color(0xff3158AB),
        centerTitle: true,
        title: Text(
          'Ask Me Anything',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
              number = getRandomNumber();
            });
          },
          child: Image.asset('assets/ball${number}.png'),
        ),
      ),
    );
  }
}
