import 'package:book_list/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import '../models/book.dart';

class BookTile extends StatelessWidget {
  final Book book;
  BookTile({required this.book});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(book.title),
      leading: Image.network(book.image),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailScreen(book: book),
        ));
      },
    );
  }
}
      
/*
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
      onTap: () {
        Navigator.of(context).push(
          // 현재 페이지에서 이동하겠다. 어디로?
          MaterialPageRoute(
            // Navigator의 경로 설정.
            builder: (context) => DetailScreen(
              title: title,
              subtitle: subtitle,
              description: description,
              image: image,
            ), // 현재 위치에서 DetailScreen() 페이지로 이동한다.
          ),
        );
      }, // 눌렀을 때의 이벤트 선언. 이 부분에서 화면 이동 시 subtitle과 description 전달.
    );
  }
}
*/