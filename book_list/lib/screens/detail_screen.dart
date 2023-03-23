import 'package:flutter/material.dart';
import '../models/book.dart';

class DetailScreen extends StatelessWidget {
  final Book book;

  DetailScreen({required this.book});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              // 웹이미지, 패딩, 열
              Image.network(book.image),
              Padding(
                padding: EdgeInsets.all(
                    3), // 컨테이너 내부 4면(상하좌우)의 간격이 모두 3이 되도록 자식위젯 배치
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start, // 수직방향에서 위쪽 정렬
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // 수평방향에서 위젯 간격 균일 정렬
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // 수평방향에서 왼쪽 정렬
                      children: [
                        Container(
                          child: Text(
                            book.title,
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          book.subtitle,
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Icon(
                        Icons.star,
                        color: Colors.red,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(3),
              ),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceAround, // 각 위젯 좌우면에 동일한 간격주기
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.blue,
                      ),
                      Text(
                        '전화',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.near_me,
                        color: Colors.blue,
                      ),
                      Text(
                        '오는길',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.save,
                        color: Colors.blue,
                      ),
                      Text(
                        '저장하기',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(book.description),
              )
            ],
          ),
        ),
      ),
    );
  }
}
