part of '../../barrel_home.dart';

@LazySingleton(as: RepositoryHome)
class RepositoryHomeImpl implements RepositoryHome {
  final DataStaticTopSearchBook _dataStaticTopSearchBook;
  const RepositoryHomeImpl(this._dataStaticTopSearchBook);
  @override
  Future<List<EntityBook>?> get getBooksTopSearch {
    List<EntityBook> list = _dataStaticTopSearchBook.books.toEntityList();
    return Future.value(list);
  }
}
