class Book {
  final String title;
  final String author;
  final int pages;

  const Book(this.title, this.author, this.pages);

  String getSummary() {
    return '$title by $author ($pages pages)';
  }

  void saveToDatabase() {
    print('connection to database...');
    print('Saving book: $title by $author ($pages pages)');
  }
}
