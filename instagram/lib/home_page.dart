import 'package:flutter/material.dart'; // 구글 디자인 규칙 (안드로이드스러움)
import 'package:flutter/cupertino.dart';

import 'feed.dart'; // 쿠퍼티노 디자인 (좀 아이폰스러움)

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> dataList = [
      {
        "post": "To reconnect with nature is key if we want to save the planet",
        "imageUrl":
            "https://cdn.pixabay.com/photo/2023/02/10/13/44/gorilla-7780902_960_720.jpg"
      },
      {
        "post": "I really miss the Taehwa River in Ulsan",
        "imageUrl":
            "https://cdn.pixabay.com/photo/2023/01/22/13/46/swans-7736415_960_720.jpg"
      },
      {
        "post": "swing near the beach",
        "imageUrl":
            "https://cdn.pixabay.com/photo/2022/10/25/19/55/beach-7546731_960_720.jpg"
      },
      {
        "post": "Have you ever seen a beetle up close?",
        "imageUrl":
            "https://cdn.pixabay.com/photo/2022/10/10/08/28/insect-7511200_960_720.jpg"
      },
    ];
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              CupertinoIcons.camera,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
              onPressed: () {},
            )
          ],
          title: Image.asset(
            'assets/logo.png',
            height: 32,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: ListView.builder(
          itemCount: dataList.length,
          itemBuilder: (context, index) {
            String post = dataList[index]['post'];
            String imageUrl = dataList[index]['imageUrl'];
            return Feed(
              imageUrl: imageUrl,
              post: post,
            );
          },
        ));
  }
}
