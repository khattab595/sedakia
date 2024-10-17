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
import 'package:shared_preferences/shared_preferences.dart' as _i33;

import '../../src/auth/data/data_sources/auth_datasource.dart' as _i3;
import '../../src/auth/data/data_sources/forgot_password_datasource.dart'
    as _i12;
import '../../src/auth/data/repositories/auth_repo_imp.dart' as _i6;
import '../../src/auth/data/repositories/forgot_password_repo_imp.dart' as _i14;
import '../../src/auth/domain/repositories/auth_repo.dart' as _i5;
import '../../src/auth/domain/repositories/forgot_password_repo.dart' as _i13;
import '../../src/auth/presentation/bloc/auth_bloc.dart' as _i36;
import '../../src/auth/presentation/bloc/forgot_password_bloc.dart' as _i39;
import '../../src/categories/data/data_sources/catagory_datasource.dart' as _i8;
import '../../src/categories/data/repositories/categories_repo_imp.dart'
    as _i10;
import '../../src/categories/domain/repositories/categories_repo.dart' as _i9;
import '../../src/categories/domain/use_cases/categories_usecase.dart' as _i11;
import '../../src/categories/presentation/bloc/categories_bloc.dart' as _i7;
import '../../src/home/data/data_sources/home_datasource.dart' as _i15;
import '../../src/home/data/repositories/home_repo_imp.dart' as _i17;
import '../../src/home/domain/repositories/home_repo.dart' as _i16;
import '../../src/home/presentation/bloc/home_bloc.dart' as _i40;
import '../../src/nav_bar/presentation/bloc/nav_bar_bloc.dart' as _i18;
import '../../src/product/data/data_sources/product_datasource.dart' as _i19;
import '../../src/product/data/repositories/product_repo_imp.dart' as _i20;
import '../../src/product/domain/repositories/product_repo.dart' as _i22;
import '../../src/product/domain/use_cases/product_usecase.dart' as _i21;
import '../../src/product/presentation/bloc/product_bloc.dart' as _i41;
import '../../src/profile/data/data_sources/profile_datasource.dart' as _i23;
import '../../src/profile/data/repositories/profile_repo_imp.dart' as _i25;
import '../../src/profile/domain/repositories/profile_repo.dart' as _i24;
import '../../src/profile/presentation/bloc/profile_bloc.dart' as _i42;
import '../../src/requests/data/data_sources/requests_datasource.dart' as _i26;
import '../../src/requests/data/repositories/requests_repo_imp.dart' as _i28;
import '../../src/requests/domain/repositories/requests_repo.dart' as _i27;
import '../../src/requests/domain/use_cases/product_usecase.dart' as _i29;
import '../../src/requests/presentation/bloc/requests_bloc.dart' as _i43;
import '../../src/settings/data/data_sources/settings_datasource.dart' as _i30;
import '../../src/settings/data/repositories/settings_repo_imp.dart' as _i32;
import '../../src/settings/domain/repositories/settings_repo.dart' as _i31;
import '../../src/settings/presentation/bloc/about_logeste_bloc.dart' as _i35;
import '../../src/splash/data/data_sources/splash_datasource.dart' as _i34;
import '../../src/splash/data/repositories/splash_repo.dart' as _i38;
import '../../src/splash/domain/repositories/base_splash_repo.dart' as _i37;
import '../../src/splash/domain/use_cases/splash_usecase.dart' as _i44;
import '../../src/splash/presentation/bloc/splash_bloc.dart' as _i45;
import 'injection_module.dart' as _i46;

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
  gh.factory<_i3.AuthDataSource>(() => _i3.AuthDataSource(gh<_i4.Dio>()));
  gh.factory<_i5.AuthRepo>(() => _i6.AuthRepoImp(gh<_i3.AuthDataSource>()));
    gh.factory<_i8.CategoriesDatasource>(
      () => _i8.CategoriesDatasource(gh<_i4.Dio>()));
  gh.factory<_i9.CategoriesRepo>(
      () => _i10.CategoriesRepoImp(gh<_i8.CategoriesDatasource>()));
  gh.factory<_i11.CategoriesUseCase>(
      () => _i11.CategoriesUseCase(gh<_i9.CategoriesRepo>()));
  gh.factory<_i12.ForgotPasswordDataSource>(
      () => _i12.ForgotPasswordDataSource(gh<_i4.Dio>()));
  gh.factory<_i13.ForgotPasswordRepo>(
      () => _i14.ForgotPasswordRepoImp(gh<_i12.ForgotPasswordDataSource>()));
  gh.factory<_i15.HomeDatasource>(() => _i15.HomeDatasource(gh<_i4.Dio>()));
  gh.factory<_i16.HomeRepo>(() => _i17.HomeRepoImp(gh<_i15.HomeDatasource>()));
  gh.factory<_i18.NavBarState>(() => _i18.NavBarState());
  gh.factory<_i19.ProductDatasource>(
      () => _i19.ProductDatasource(gh<_i4.Dio>()));
  gh.factory<_i20.ProductRepoImp>(
      () => _i20.ProductRepoImp(gh<_i19.ProductDatasource>()));
  gh.factory<_i21.ProductUseCase>(
      () => _i21.ProductUseCase(gh<_i22.ProductRepo>()));
  gh.factory<_i23.ProfileDataSource>(
      () => _i23.ProfileDataSource(gh<_i4.Dio>()));
  gh.factory<_i24.ProfileRepo>(
      () => _i25.ProfileRepoImp(gh<_i23.ProfileDataSource>()));
  gh.factory<_i26.RequestsDatasource>(
      () => _i26.RequestsDatasource(gh<_i4.Dio>()));
  gh.factory<_i27.RequestsRepo>(
      () => _i28.RequestsRepoImp(gh<_i26.RequestsDatasource>()));
  gh.factory<_i29.RequestsUseCase>(
      () => _i29.RequestsUseCase(gh<_i27.RequestsRepo>()));
  gh.factory<_i30.SettingsDatasource>(
      () => _i30.SettingsDatasource(gh<_i4.Dio>()));
  gh.factory<_i31.SettingsRepo>(
      () => _i32.SettingsRepoImp(gh<_i30.SettingsDatasource>()));
  await gh.factoryAsync<_i33.SharedPreferences>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i34.SplashDatasource>(() => _i34.SplashDatasource(gh<_i4.Dio>()));
  gh.factory<_i35.AboutCubit>(() => _i35.AboutCubit(gh<_i31.SettingsRepo>()));
  gh.factory<_i36.AuthCubit>(() => _i36.AuthCubit(gh<_i5.AuthRepo>()));
  gh.factory<_i37.BaseSplashRepo>(
      () => _i38.SplashRepo(gh<_i34.SplashDatasource>()));
  gh.factory<_i39.ForgotPasswordCubit>(() => _i39.ForgotPasswordCubit(
        gh<_i13.ForgotPasswordRepo>(),
        gh<_i5.AuthRepo>(),
      ));
  gh.factory<_i40.HomeCubit>(() => _i40.HomeCubit(gh<_i16.HomeRepo>()));
  gh.factory<_i41.ProductBloc>(
      () => _i41.ProductBloc(gh<_i21.ProductUseCase>()));
  gh.factory<_i42.ProfileBloc>(() => _i42.ProfileBloc(
        gh<_i24.ProfileRepo>(),
        gh<_i5.AuthRepo>(),
        gh<_i13.ForgotPasswordRepo>(),
      ));
  gh.factory<_i43.RequestsBloc>(
      () => _i43.RequestsBloc(gh<_i29.RequestsUseCase>()));
  gh.factory<_i44.SplashUseCase>(
      () => _i44.SplashUseCase(gh<_i37.BaseSplashRepo>()));
  gh.factory<_i45.SplashCubit>(
      () => _i45.SplashCubit(gh<_i44.SplashUseCase>()));
  return getIt;
}

class _$InjectionModule extends _i46.InjectionModule {}
