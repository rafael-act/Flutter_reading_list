import 'package:flutter/material.dart';
import 'package:reading_list/models/book_model.dart';
import 'package:reading_list/widgets/horizontal_line.dart';

class ListBooks extends StatelessWidget {
  const ListBooks({super.key, required this.listBooks});

  final List<BookModel> listBooks;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, i) {
        final book = listBooks[i];
        return Padding(
          padding: const EdgeInsets.only(left: 58.0),
          child: ListTile(
            title: Text(
              book.title,
              style: TextStyle(
                color: book.isRead ? Colors.grey : Color(0xFF334B4E),
                fontSize: 26,
                fontWeight: FontWeight.w600,
                decoration: book.isRead ? TextDecoration.lineThrough : null,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Text(
                book.description,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  color: book.isRead ? Colors.grey : Color(0xFF334B4E),
                  decoration: book.isRead ? TextDecoration.lineThrough : null,
                  fontSize: 18,
                ),
              ),
            ),
            visualDensity: VisualDensity.compact,
            contentPadding: EdgeInsets.all(0),
          ),
        );
      },
      separatorBuilder: (context, i) => HorizontalLine(),
      itemCount: listBooks.length,
    );
  }
}
