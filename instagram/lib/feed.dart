import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Feed extends StatefulWidget {
  const Feed({
    Key? key,
    required this.imageUrl,
    required this.post,
  }) : super(key: key);

  final String imageUrl; // 이미지를 담을 변수
  final String post; // 포스트글을 담을 변수

  @override
  State<Feed> createState() => _FeedState(); // 상태를 관리하는 _FeedState 클래스 생성
}

class _FeedState extends State<Feed> {
  bool isFavorite = false; // 좋아요 여부
  int likedNum = Random().nextInt(100) + 50; // 좋아요 개수 랜덤(50 ~ 100)

  @override
  Widget build(BuildContext context) {
    return Column(
      // Column위젯으로 세로 방향 레이아웃 잡기
      crossAxisAlignment: CrossAxisAlignment.start, //Column위젯의 default는 Center
      children: [
        Image.network(
          widget.imageUrl, // 10번째 줄의 imageUrl 가져오기
          //"https://cdn.pixabay.com/photo/2023/02/10/13/44/gorilla-7780902_960_720.jpg", //무료이미지
          height: 400,
          width: double.infinity,
          fit: BoxFit.cover, // 이미지의 비율을 유지하면서, 고정된 폭과 높이에 맞춰 이미지를 적절히 잘라 보여줌
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {
                  // 화면 갱신
                  setState(() {
                    isFavorite = !isFavorite; // 좋아요 토글
                  });
                },
                icon: isFavorite
                    ? Icon(CupertinoIcons.heart_fill, color: Colors.pink)
                    : Icon(CupertinoIcons.heart, color: Colors.black)
                /* 
                한 줄 if 문
                조건 ? 반환값1 : 반환값2
                조건이 true인 경우 반환값1 이 할당되고, false인 경우 반환값2가 할당됨
                */
                ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.chat_bubble,
                color: Colors.black,
              ),
            ),
            Spacer(), //빈 공간 추가
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.bookmark,
                color: Colors.black,
              ),
            ),
          ],
        ),
        // 좋아요
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '$likedNum likes',
            // ignore: prefer_const_constructors
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        //설명
        Padding(padding: const EdgeInsets.all(8.0), child: Text(widget.post)
            //"To reconnect with nature is key if we want to save the planet"),
            ),

        //날짜
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "MARCH 13",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
