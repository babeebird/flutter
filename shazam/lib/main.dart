import 'package:flutter/material.dart';
import 'package:shazam/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shazam',
      theme: ThemeData(
        primarySwatch: Colors.yellow, // 견본색상
      ),
      home: HomePage(),
    );
  }
}
