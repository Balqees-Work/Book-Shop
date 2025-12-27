// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../features/home/barrel_home.dart' as _i110;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i110.DataStaticTopSearchBook>(
      () => _i110.DataStaticTopSearchBook(),
    );
    gh.lazySingleton<_i110.RepositoryHome>(
      () => _i110.RepositoryHomeImpl(gh<_i110.DataStaticTopSearchBook>()),
    );
    gh.factory<_i110.CaseGetBooksTopSearch>(
      () => _i110.CaseGetBooksTopSearch(repository: gh<_i110.RepositoryHome>()),
    );
    return this;
  }
}
