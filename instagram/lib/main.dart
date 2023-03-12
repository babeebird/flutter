import 'package:flutter/material.dart'; // 구글 디자인 규칙 (안드로이드스러움)
import 'package:instagram/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), // 앱 시작 시 보여주는 화면
    ); // MaterialApp
  }
}
