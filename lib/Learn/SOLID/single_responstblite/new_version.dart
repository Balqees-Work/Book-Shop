// The Book class now only handles its data and domain logic.
class Book {
  final String title;
  final String author;
  final int pages;

  const Book(this.title, this.author, this.pages);

  // Responsibility: Book Data Management
  String getSummary() {
    return '$title by $author, $pages pages.';
  }

  String nameBook() => title;
}

// A new class dedicated solely to the persistence (saving/loading) of a Book.
class BookDatabase {
  // Responsibility: Persistence Management
  void save(Book book) {
    // The logic is now encapsulated here.
    print('Connecting to database...');
    print('Saving book: "${book.title}" to database...');
    // If the saving mechanism changes (e.g., to a file), only this class changes.
  }

  // void load(String title) { /* ... logic to load a book */ }
}

void main() {
  final myBook = const Book('The Great Dart', 'A. Programmer', 300);
  final repository = BookDatabase();

  repository.save(myBook);
}
