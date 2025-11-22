part of '../../barrel_home.dart';

// TODO: ADD Custom Exception
class RepositoryHomeImpl implements RepositoryHome {
  final DataStaticTopSearchBook _dataStaticTopSearchBook;
  const RepositoryHomeImpl(this._dataStaticTopSearchBook);
  @override
  Future<List<EntityBook>> get getBooksTopSearch async {
    try {
      List<EntityBook> list = _dataStaticTopSearchBook.books.toEntityList();
      return list;
    } catch (e) {
      return <EntityBook>[];
    }
  }
}
