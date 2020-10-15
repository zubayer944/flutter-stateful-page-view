import 'package:flutter/material.dart';
import 'package:flutter_page_view/page1.dart';
import 'package:flutter_page_view/page2.dart';
import 'package:flutter_page_view/page3.dart';
import 'package:flutter_page_view/page4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          scrollDirection: Axis.vertical,
          controller: _controller,
          children: [
            Page1(),
            Page2(),
            Page3(),
            Page4(),
          ],
        ),
      ),
    );
  }
}
