// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import '../../src/home/data/data_sources/home_datasource.dart' as _i3;
import '../../src/home/data/repositories/home_repo_imp.dart' as _i6;
import '../../src/home/domain/repositories/home_repo.dart' as _i5;
import '../../src/home/domain/use_cases/home_usecase.dart' as _i7;
import '../../src/home/presentation/bloc/home_bloc.dart' as _i13;
import '../../src/nav_bar/presentation/bloc/nav_bar_bloc.dart' as _i8;
import '../../src/splash/data/data_sources/splash_datasource.dart' as _i10;
import '../../src/splash/data/repositories/splash_repo.dart' as _i12;
import '../../src/splash/domain/repositories/base_splash_repo.dart' as _i11;
import '../../src/splash/domain/use_cases/splash_usecase.dart' as _i14;
import '../../src/splash/presentation/bloc/splash_bloc.dart' as _i15;
import 'injection_module.dart' as _i16;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final injectionModule = _$InjectionModule();
  gh.factory<_i3.HomeDatasource>(() => _i3.HomeDatasource(gh<_i4.Dio>()));
  gh.factory<_i5.HomeRepo>(() => _i6.HomeRepoImp(gh<_i3.HomeDatasource>()));
  gh.factory<_i7.HomeUseCase>(() => _i7.HomeUseCase(gh<_i5.HomeRepo>()));
  gh.factory<_i8.NavBarState>(() => _i8.NavBarState());
  await gh.factoryAsync<_i9.SharedPreferences>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i10.SplashDatasource>(() => _i10.SplashDatasource(gh<_i4.Dio>()));
  gh.factory<_i11.BaseSplashRepo>(
      () => _i12.SplashRepo(gh<_i10.SplashDatasource>()));
  gh.factory<_i13.HomeCubit>(() => _i13.HomeCubit(
        gh<_i7.HomeUseCase>(),
        gh<_i5.HomeRepo>(),
      ));
  gh.factory<_i14.SplashUseCase>(
      () => _i14.SplashUseCase(gh<_i11.BaseSplashRepo>()));
  gh.factory<_i15.SplashCubit>(
      () => _i15.SplashCubit(gh<_i14.SplashUseCase>()));
  return getIt;
}

class _$InjectionModule extends _i16.InjectionModule {}
