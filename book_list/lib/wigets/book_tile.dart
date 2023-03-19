import 'package:flutter/material.dart';

class BookTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final String image;

  BookTile({
    // 생성자, 필수 인자를 선언함
    required this.title,
    required this.subtitle,
    required this.description,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Image.network(image),
      onTap: () {}, // 눌렀을 때의 이벤트 선언. 이 부분에서 화면 이동 시 subtitle과 description 전달.
    );
  }
}
