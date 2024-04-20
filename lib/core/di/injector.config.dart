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
import 'package:shared_preferences/shared_preferences.dart' as _i20;

import '../../src/auth/data/data_sources/auth_datasource.dart' as _i3;
import '../../src/auth/data/data_sources/forgot_password_datasource.dart'
    as _i7;
import '../../src/auth/data/repositories/auth_repo_imp.dart' as _i6;
import '../../src/auth/data/repositories/forgot_password_repo.dart' as _i9;
import '../../src/auth/domain/repositories/auth_repo.dart' as _i5;
import '../../src/auth/domain/repositories/forgot_password_repo.dart' as _i8;
import '../../src/auth/presentation/bloc/auth_bloc.dart' as _i26;
import '../../src/auth/presentation/bloc/forgot_password_bloc.dart' as _i39;
import '../../src/home/data/data_sources/home_datasource.dart' as _i10;
import '../../src/home/data/repositories/home_repo.dart' as _i28;
import '../../src/home/domain/repositories/base_home_repo.dart' as _i27;
import '../../src/home/domain/use_cases/home_usecase.dart' as _i40;
import '../../src/home/presentation/bloc/home_bloc.dart' as _i51;
import '../../src/invoices/data/data_sources/products_datasource.dart' as _i14;
import '../../src/invoices/data/repositories/products_repo.dart' as _i32;
import '../../src/invoices/domain/repositories/base_products_repo.dart' as _i31;
import '../../src/invoices/domain/use_cases/products_usecase.dart' as _i42;
import '../../src/invoices/presentation/invoices/bloc/products_bloc.dart'
    as _i53;
import '../../src/nav_bar/presentation/bloc/nav_bar_bloc.dart' as _i12;
import '../../src/notifications/data/data_sources/notifications_datasource.dart'
    as _i13;
import '../../src/notifications/data/repositories/notifications_repo.dart'
    as _i30;
import '../../src/notifications/domain/repositories/base_notifications_repo.dart'
    as _i29;
import '../../src/notifications/domain/use_cases/notifications_usecase.dart'
    as _i41;
import '../../src/notifications/presentation/bloc/Notification_bloc.dart'
    as _i52;
import '../../src/profile/data/data_sources/profile_datasource.dart' as _i15;
import '../../src/profile/data/repositories/profile_repo_imp.dart' as _i17;
import '../../src/profile/domain/repositories/profile_repo.dart' as _i16;
import '../../src/profile/presentation/bloc/profile_bloc.dart' as _i43;
import '../../src/qayds/data/data_sources/stores_datasource.dart' as _i22;
import '../../src/qayds/data/repositories/stores_repo_imp.dart' as _i24;
import '../../src/qayds/domain/repositories/stores_repo.dart' as _i23;
import '../../src/qayds/domain/use_cases/stores_usecase.dart' as _i25;
import '../../src/qayds/presentation/qayd_payment/bloc/qayd_payment_bloc.dart'
    as _i44;
import '../../src/qayds/presentation/register_qayd/bloc/register_qayd_bloc.dart'
    as _i45;
import '../../src/reports/data/data_sources/reports_datasource.dart' as _i18;
import '../../src/reports/data/repositories/reports_repo.dart' as _i34;
import '../../src/reports/domain/repositories/base_reports_repo.dart' as _i33;
import '../../src/reports/domain/use_cases/reports_usecase.dart' as _i46;
import '../../src/reports/presentation/cubit/report_cubit.dart' as _i54;
import '../../src/settings/data/data_sources/settings_datasource.dart' as _i19;
import '../../src/settings/data/repositories/settings_repo.dart' as _i36;
import '../../src/settings/domain/repositories/base_settings_repo.dart' as _i35;
import '../../src/settings/domain/use_cases/settings_usecase.dart' as _i47;
import '../../src/settings/presentation/bloc/about_logeste_bloc.dart' as _i50;
import '../../src/settings/presentation/bloc/language_bloc.dart' as _i11;
import '../../src/settings/presentation/support/bloc/support_bloc.dart' as _i49;
import '../../src/splash/data/data_sources/splash_datasource.dart' as _i21;
import '../../src/splash/data/repositories/splash_repo.dart' as _i38;
import '../../src/splash/domain/repositories/base_splash_repo.dart' as _i37;
import '../../src/splash/domain/use_cases/splash_usecase.dart' as _i48;
import '../../src/splash/presentation/bloc/splash_bloc.dart' as _i55;
import 'injection_module.dart' as _i56;

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
  gh.factory<_i7.ForgotPasswordDataSource>(
      () => _i7.ForgotPasswordDataSource(gh<_i4.Dio>()));
  gh.factory<_i8.ForgotPasswordRepo>(
      () => _i9.ForgotPasswordRepoImp(gh<_i7.ForgotPasswordDataSource>()));
  gh.factory<_i10.HomeDatasource>(() => _i10.HomeDatasource(gh<_i4.Dio>()));
  gh.factory<_i11.LanguageCubit>(() => _i11.LanguageCubit());
  gh.factory<_i12.NavBarState>(() => _i12.NavBarState());
  gh.factory<_i13.NotificationsDatasource>(
      () => _i13.NotificationsDatasource(gh<_i4.Dio>()));
  gh.factory<_i14.ProductsDatasource>(
      () => _i14.ProductsDatasource(gh<_i4.Dio>()));
  gh.factory<_i15.ProfileDataSource>(
      () => _i15.ProfileDataSource(gh<_i4.Dio>()));
  gh.factory<_i16.ProfileRepo>(
      () => _i17.ProfileRepoImp(gh<_i15.ProfileDataSource>()));
  gh.factory<_i18.ReportsDatasource>(
      () => _i18.ReportsDatasource(gh<_i4.Dio>()));
  gh.factory<_i19.SettingsDatasource>(
      () => _i19.SettingsDatasource(gh<_i4.Dio>()));
  await gh.factoryAsync<_i20.SharedPreferences>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i21.SplashDatasource>(() => _i21.SplashDatasource(gh<_i4.Dio>()));
  gh.factory<_i22.StoresDatasource>(() => _i22.StoresDatasource(gh<_i4.Dio>()));
  gh.factory<_i23.StoresRepo>(
      () => _i24.StoresRepoImp(gh<_i22.StoresDatasource>()));
  gh.factory<_i25.StoresUseCase>(
      () => _i25.StoresUseCase(gh<_i23.StoresRepo>()));
  gh.factory<_i26.AuthCubit>(() => _i26.AuthCubit(gh<_i5.AuthRepo>()));
  gh.factory<_i27.BaseHomeRepo>(() => _i28.HomeRepo(gh<_i10.HomeDatasource>()));
  gh.factory<_i29.BaseNotificationsRepo>(
      () => _i30.WalletRepo(gh<_i13.NotificationsDatasource>()));
  gh.factory<_i31.BaseProductsRepo>(
      () => _i32.ProductsRepo(gh<_i14.ProductsDatasource>()));
  gh.factory<_i33.BaseReportsRepo>(
      () => _i34.ReportRepo(gh<_i18.ReportsDatasource>()));
  gh.factory<_i35.BaseSettingsRepo>(
      () => _i36.SettingsRepo(gh<_i19.SettingsDatasource>()));
  gh.factory<_i37.BaseSplashRepo>(
      () => _i38.SplashRepo(gh<_i21.SplashDatasource>()));
  gh.factory<_i39.ForgotPasswordCubit>(
      () => _i39.ForgotPasswordCubit(gh<_i8.ForgotPasswordRepo>()));
  gh.factory<_i40.HomeUseCase>(() => _i40.HomeUseCase(gh<_i27.BaseHomeRepo>()));
  gh.factory<_i41.NotificationsUseCase>(
      () => _i41.NotificationsUseCase(gh<_i29.BaseNotificationsRepo>()));
  gh.factory<_i42.ProductsUseCase>(
      () => _i42.ProductsUseCase(gh<_i31.BaseProductsRepo>()));
  gh.factory<_i43.ProfileBloc>(() => _i43.ProfileBloc(gh<_i16.ProfileRepo>()));
  gh.factory<_i44.QaydPaymentCubit>(
      () => _i44.QaydPaymentCubit(gh<_i25.StoresUseCase>()));
  gh.factory<_i45.RegiserQaydCubit>(
      () => _i45.RegiserQaydCubit(gh<_i25.StoresUseCase>()));
  gh.factory<_i46.ReportsUseCase>(
      () => _i46.ReportsUseCase(gh<_i33.BaseReportsRepo>()));
  gh.factory<_i47.SettingsUseCase>(
      () => _i47.SettingsUseCase(gh<_i35.BaseSettingsRepo>()));
  gh.factory<_i48.SplashUseCase>(
      () => _i48.SplashUseCase(gh<_i37.BaseSplashRepo>()));
  gh.factory<_i49.SupportCubit>(
      () => _i49.SupportCubit(gh<_i47.SettingsUseCase>()));
  gh.factory<_i50.AboutLogesteCubit>(
      () => _i50.AboutLogesteCubit(gh<_i47.SettingsUseCase>()));
  gh.factory<_i51.HomeCubit>(() => _i51.HomeCubit(gh<_i40.HomeUseCase>()));
  gh.factory<_i52.NotificationsCubit>(
      () => _i52.NotificationsCubit(gh<_i41.NotificationsUseCase>()));
  gh.factory<_i53.ProductsCubit>(
      () => _i53.ProductsCubit(gh<_i42.ProductsUseCase>()));
  gh.factory<_i54.ReportsCubit>(
      () => _i54.ReportsCubit(gh<_i46.ReportsUseCase>()));
  gh.factory<_i55.SplashCubit>(
      () => _i55.SplashCubit(gh<_i48.SplashUseCase>()));
  return getIt;
}

class _$InjectionModule extends _i56.InjectionModule {}
