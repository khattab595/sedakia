// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i11;

import '../../src/electronic_rosary/presentation/bloc/electronic_rosary_bloc.dart'
    as _i3;
import '../../src/home/data/data_sources/home_datasource.dart' as _i4;
import '../../src/home/data/repositories/home_repo_imp.dart' as _i7;
import '../../src/home/domain/repositories/home_repo.dart' as _i6;
import '../../src/home/domain/use_cases/home_usecase.dart' as _i8;
import '../../src/home/presentation/bloc/home_bloc.dart' as _i16;
import '../../src/nav_bar/presentation/bloc/nav_bar_bloc.dart' as _i9;
import '../../src/parties/presentation/bloc/parties_bloc.dart' as _i10;
import '../../src/splash/data/data_sources/splash_datasource.dart' as _i12;
import '../../src/splash/data/repositories/splash_repo.dart' as _i15;
import '../../src/splash/domain/repositories/base_splash_repo.dart' as _i14;
import '../../src/splash/domain/use_cases/splash_usecase.dart' as _i17;
import '../../src/splash/presentation/bloc/splash_bloc.dart' as _i18;
import '../../src/tasks/presentation/bloc/tasks_bloc.dart' as _i13;
import 'injection_module.dart' as _i19;

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
  gh.factory<_i3.ElectronicRosaryCubit>(() => _i3.ElectronicRosaryCubit());
  gh.factory<_i4.HomeDatasource>(() => _i4.HomeDatasource(gh<_i5.Dio>()));
  gh.factory<_i6.HomeRepo>(() => _i7.HomeRepoImp(gh<_i4.HomeDatasource>()));
  gh.factory<_i8.HomeUseCase>(() => _i8.HomeUseCase(gh<_i6.HomeRepo>()));
  gh.factory<_i9.NavBarState>(() => _i9.NavBarState());
  gh.factory<_i10.PartiesCubit>(() => _i10.PartiesCubit());
  await gh.factoryAsync<_i11.SharedPreferences>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i12.SplashDatasource>(() => _i12.SplashDatasource(gh<_i5.Dio>()));
  gh.factory<_i13.TasksCubit>(() => _i13.TasksCubit());
  gh.factory<_i14.BaseSplashRepo>(
      () => _i15.SplashRepo(gh<_i12.SplashDatasource>()));
  gh.factory<_i16.HomeCubit>(() => _i16.HomeCubit(
        gh<_i8.HomeUseCase>(),
        gh<_i6.HomeRepo>(),
      ));
  gh.factory<_i17.SplashUseCase>(
      () => _i17.SplashUseCase(gh<_i14.BaseSplashRepo>()));
  gh.factory<_i18.SplashCubit>(
      () => _i18.SplashCubit(gh<_i17.SplashUseCase>()));
  return getIt;
}

class _$InjectionModule extends _i19.InjectionModule {}
