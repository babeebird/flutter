import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('비폭력 대화'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // 웹이미지, 패딩, 열
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
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // 수평방향에서 왼쪽 정렬
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
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                  '생각하고 말하고 듣고 행동하는 방식을 선택하며 사는 것을 배울 수 있다.\n분노를 자아내고 자존감을 떨어뜨리는 말 대신 공감과 연결을 가져오는 말을 쓰게 된다.'),
            )
          ],
        ),
      ),
    );
  }
}
