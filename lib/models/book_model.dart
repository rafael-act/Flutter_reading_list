class BookModel {
  BookModel({this.title = '', this.description = '', this.isRead = false});
  late String title;
  late String description;
  late bool isRead;
}

final List<BookModel> listBooksMock = [
  BookModel(title: 'clean code1', description: 'description', isRead: true),
  BookModel(
    title: 'The books is on the table',
    description: 'table table table table',
    isRead: false,
  ),
  BookModel(
    title: 'is on the table',
    description: 'table table table table',
    isRead: false,
  ),
  BookModel(title: 'Java brainstorm', description: 'nice books', isRead: true),
];
