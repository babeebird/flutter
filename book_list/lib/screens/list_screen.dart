import 'package:book_list/repositories/book_repository.dart';
import 'package:book_list/wigets/book_tile.dart';
import 'package:flutter/material.dart';
import '../models/book.dart';

class ListScreen extends StatelessWidget {
  final List<Book> books = BookRepository().getBooks(); //리포지토리로부터 데이터 가져오기

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('도서 목록 앱'),
      ),
      body: ListView.separated(
        //padding: const EdgeInsets.all(20),
        itemCount: books.length,
        itemBuilder: (context, index) {
          return BookTile(book: books[index]);
        },
        separatorBuilder: (BuildContext context, int index) =>
            const Divider(height: 10.0, color: Colors.blue),
      ),
    );
  }
}
