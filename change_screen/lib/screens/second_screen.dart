import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String screenData;
  SecondScreen(
      {required this.screenData}); // 화면 클래스의 생성자에 인자를 넣으면, 클래스를 통해 객체를 생성할 때 객체 내의 변수에 인자 값이 저장된다.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(), // AppBar에는 상단 뒤로가기 버튼이 자동으로 활성화됨.
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('screenData: ' + screenData),
          OutlinedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('첫번째 페이지로 넘어가기'))
        ],
      )),
    );
  }
}
