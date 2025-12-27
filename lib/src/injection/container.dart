import 'package:book_shop_bal/src/features/home/barrel_home.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<DataStaticTopSearchBook>(() => .new());

  locator.registerLazySingleton<RepositoryHome>(
    () => RepositoryHomeImpl(locator<DataStaticTopSearchBook>()),
  );

  locator.registerFactory<CaseGetBooksTopSearch>(
    () => .new(repository: locator<RepositoryHome>()),
  );

  authorize();
}

void authorize() {
  // inject
}
