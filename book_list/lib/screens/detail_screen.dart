import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('비폭력 대화'),
      ),
      body: Column(
        children: [
          Image.network(
            'https://pds.joongang.co.kr//news/component/htmlphoto_mmdata/201710/16/a46fc198-11d1-4164-a06b-8daa67737467.jpg',
          ),
          Padding(
            padding:
                EdgeInsets.all(3), // 컨테이너 내부 4면(상하좌우)의 간격이 모두 3이 되도록 자식위젯 배치
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start, // 수직방향에서 위쪽 정렬
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween, // 수평방향에서 위젯 간격 균일 정렬
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // 수평방향에서 왼쪽 정렬
                  children: [
                    Container(
                      child: Text(
                        '비폭력 대화',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      '일상에서 쓰는 평화의 언어, 삶의 언어',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
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
        ],
      ),
    );
  }
}
