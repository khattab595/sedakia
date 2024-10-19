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
import 'package:shared_preferences/shared_preferences.dart' as _i36;

import '../../src/auth/data/data_sources/auth_datasource.dart' as _i3;
import '../../src/auth/data/data_sources/forgot_password_datasource.dart'
    as _i15;
import '../../src/auth/data/repositories/auth_repo_imp.dart' as _i6;
import '../../src/auth/data/repositories/forgot_password_repo_imp.dart' as _i17;
import '../../src/auth/domain/repositories/auth_repo.dart' as _i5;
import '../../src/auth/domain/repositories/forgot_password_repo.dart' as _i16;
import '../../src/auth/presentation/bloc/auth_bloc.dart' as _i39;
import '../../src/auth/presentation/bloc/forgot_password_bloc.dart' as _i44;
import '../../src/categories/data/data_sources/catagory_datasource.dart' as _i7;
import '../../src/categories/data/repositories/categories_repo_imp.dart' as _i9;
import '../../src/categories/domain/repositories/categories_repo.dart' as _i8;
import '../../src/categories/domain/use_cases/categories_usecase.dart' as _i10;
import '../../src/categories/presentation/bloc/categories_bloc.dart' as _i42;
import '../../src/customers/data/data_sources/customers_datasource.dart'
    as _i11;
import '../../src/customers/data/repositories/customers_repo_imp.dart' as _i13;
import '../../src/customers/domain/repositories/customers_repo.dart' as _i12;
import '../../src/customers/domain/use_cases/customers_usecase.dart' as _i14;
import '../../src/customers/presentation/bloc/customers_bloc.dart' as _i43;
import '../../src/home/data/data_sources/home_datasource.dart' as _i18;
import '../../src/home/data/repositories/home_repo_imp.dart' as _i20;
import '../../src/home/domain/repositories/home_repo.dart' as _i19;
import '../../src/home/presentation/bloc/home_bloc.dart' as _i45;
import '../../src/more/data/data_sources/more_datasource.dart' as _i26;
import '../../src/more/data/repositories/more_repo_imp.dart' as _i28;
import '../../src/more/domain/repositories/more_repo.dart' as _i27;
import '../../src/more/presentation/bloc/more_bloc.dart' as _i47;
import '../../src/nav_bar/presentation/bloc/nav_bar_bloc.dart' as _i21;
import '../../src/product/data/data_sources/product_datasource.dart' as _i22;
import '../../src/product/data/repositories/product_repo_imp.dart' as _i24;
import '../../src/product/domain/repositories/product_repo.dart' as _i23;
import '../../src/product/domain/use_cases/product_usecase.dart' as _i25;
import '../../src/product/presentation/bloc/product_bloc.dart' as _i46;
import '../../src/requests/data/data_sources/requests_datasource.dart' as _i29;
import '../../src/requests/data/repositories/requests_repo_imp.dart' as _i31;
import '../../src/requests/domain/repositories/requests_repo.dart' as _i30;
import '../../src/requests/domain/use_cases/product_usecase.dart' as _i32;
import '../../src/requests/presentation/view/bloc/requests_bloc.dart' as _i49;
import '../../src/requests/presentation/details/bloc/request_details_bloc.dart'
    as _i48;
import '../../src/settings/data/data_sources/settings_datasource.dart' as _i33;
import '../../src/settings/data/repositories/settings_repo_imp.dart' as _i35;
import '../../src/settings/domain/repositories/settings_repo.dart' as _i34;
import '../../src/settings/presentation/bloc/about_logeste_bloc.dart' as _i38;
import '../../src/splash/data/data_sources/splash_datasource.dart' as _i37;
import '../../src/splash/data/repositories/splash_repo.dart' as _i41;
import '../../src/splash/domain/repositories/base_splash_repo.dart' as _i40;
import '../../src/splash/domain/use_cases/splash_usecase.dart' as _i50;
import '../../src/splash/presentation/bloc/splash_bloc.dart' as _i51;
import 'injection_module.dart' as _i52;

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
  gh.factory<_i7.CategoriesDatasource>(
      () => _i7.CategoriesDatasource(gh<_i4.Dio>()));
  gh.factory<_i8.CategoriesRepo>(
      () => _i9.CategoriesRepoImp(gh<_i7.CategoriesDatasource>()));
  gh.factory<_i10.CategoriesUseCase>(
      () => _i10.CategoriesUseCase(gh<_i8.CategoriesRepo>()));
  gh.factory<_i11.CustomersDatasource>(
      () => _i11.CustomersDatasource(gh<_i4.Dio>()));
  gh.factory<_i12.CustomersRepo>(
      () => _i13.CustomersRepoImp(gh<_i11.CustomersDatasource>()));
  gh.factory<_i14.CustomersUseCase>(
      () => _i14.CustomersUseCase(gh<_i12.CustomersRepo>()));
  gh.factory<_i15.ForgotPasswordDataSource>(
      () => _i15.ForgotPasswordDataSource(gh<_i4.Dio>()));
  gh.factory<_i16.ForgotPasswordRepo>(
      () => _i17.ForgotPasswordRepoImp(gh<_i15.ForgotPasswordDataSource>()));
  gh.factory<_i18.HomeDatasource>(() => _i18.HomeDatasource(gh<_i4.Dio>()));
  gh.factory<_i19.HomeRepo>(() => _i20.HomeRepoImp(gh<_i18.HomeDatasource>()));
  gh.factory<_i21.NavBarState>(() => _i21.NavBarState());
  gh.factory<_i22.ProductDatasource>(
      () => _i22.ProductDatasource(gh<_i4.Dio>()));
  gh.factory<_i23.ProductRepo>(
      () => _i24.ProductRepoImp(gh<_i22.ProductDatasource>()));
  gh.factory<_i25.ProductUseCase>(
      () => _i25.ProductUseCase(gh<_i23.ProductRepo>()));
  gh.factory<_i26.ProfileDataSource>(
      () => _i26.ProfileDataSource(gh<_i4.Dio>()));
  gh.factory<_i27.ProfileRepo>(
      () => _i28.ProfileRepoImp(gh<_i26.ProfileDataSource>()));
  gh.factory<_i29.RequestsDatasource>(
      () => _i29.RequestsDatasource(gh<_i4.Dio>()));
  gh.factory<_i30.RequestsRepo>(
      () => _i31.RequestsRepoImp(gh<_i29.RequestsDatasource>()));
  gh.factory<_i32.RequestsUseCase>(
      () => _i32.RequestsUseCase(gh<_i30.RequestsRepo>()));
  gh.factory<_i33.SettingsDatasource>(
      () => _i33.SettingsDatasource(gh<_i4.Dio>()));
  gh.factory<_i34.SettingsRepo>(
      () => _i35.SettingsRepoImp(gh<_i33.SettingsDatasource>()));
  await gh.factoryAsync<_i36.SharedPreferences>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i37.SplashDatasource>(() => _i37.SplashDatasource(gh<_i4.Dio>()));
  gh.factory<_i38.AboutCubit>(() => _i38.AboutCubit(gh<_i34.SettingsRepo>()));
  gh.factory<_i39.AuthCubit>(() => _i39.AuthCubit(gh<_i5.AuthRepo>()));
  gh.factory<_i40.BaseSplashRepo>(
      () => _i41.SplashRepo(gh<_i37.SplashDatasource>()));
  gh.factory<_i42.CategoriesBloc>(
      () => _i42.CategoriesBloc(gh<_i10.CategoriesUseCase>()));
  gh.factory<_i43.CustomersBloc>(
      () => _i43.CustomersBloc(gh<_i14.CustomersUseCase>()));
  gh.factory<_i44.ForgotPasswordCubit>(() => _i44.ForgotPasswordCubit(
        gh<_i16.ForgotPasswordRepo>(),
        gh<_i5.AuthRepo>(),
      ));
  gh.factory<_i45.HomeCubit>(() => _i45.HomeCubit(gh<_i19.HomeRepo>()));
  gh.factory<_i46.ProductBloc>(
      () => _i46.ProductBloc(gh<_i25.ProductUseCase>()));
  gh.factory<_i47.ProfileBloc>(() => _i47.ProfileBloc(
        gh<_i27.ProfileRepo>(),
        gh<_i5.AuthRepo>(),
        gh<_i16.ForgotPasswordRepo>(),
      ));
  gh.factory<_i48.RequestDetailsBloc>(
      () => _i48.RequestDetailsBloc(gh<_i32.RequestsUseCase>()));
  gh.factory<_i49.RequestsBloc>(
      () => _i49.RequestsBloc(gh<_i32.RequestsUseCase>()));
  gh.factory<_i50.SplashUseCase>(
      () => _i50.SplashUseCase(gh<_i40.BaseSplashRepo>()));
  gh.factory<_i51.SplashCubit>(
      () => _i51.SplashCubit(gh<_i50.SplashUseCase>()));
  return getIt;
}

class _$InjectionModule extends _i52.InjectionModule {}
