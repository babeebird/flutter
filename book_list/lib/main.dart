import 'package:book_list/screens/detail_screen.dart';
import 'package:book_list/screens/list_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
/*
main()은 플러터 프로그램이 최초로 실행되도록 하는 내장함수이고,
runApp()은 위젯이 스크린에 나타나도록 실행(rendering)하는 내장함수.

MyApp()이 위젯트리의 뿌리 위젯이라고 할 수 있음.

*/

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /* 
    build() 메소드는 Fluuter 위젯 트리에서 현재 위젯의 구조와 레이아웃을 정의
    BuildContext 인수는 위젯의 위치와 구성 정보를 포함하는 객체. 이 인수를 통해 위젯은
    Theme, MediaQuery, Navigator 등 다른 위젯과 애플리케이션의 상태 정보를 액세스할 수 있음.
    */
    return MaterialApp(
      title: 'Book List App',
      //home: ListScreen(),
      home: DetailScreen(),
    );
  }
}
