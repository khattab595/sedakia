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
import 'package:shared_preferences/shared_preferences.dart' as _i16;

import '../../src/auth/data/data_sources/auth_datasource.dart' as _i3;
import '../../src/auth/data/data_sources/forgot_password_datasource.dart'
    as _i7;
import '../../src/auth/data/repositories/auth_repo.dart' as _i6;
import '../../src/auth/data/repositories/forgot_password_repo.dart' as _i25;
import '../../src/auth/domain/repositories/base_auth_repo.dart' as _i5;
import '../../src/auth/domain/repositories/base_forgot_password_repo.dart'
    as _i24;
import '../../src/auth/domain/use_cases/auth_usecase.dart' as _i23;
import '../../src/auth/domain/use_cases/forgot_password_usecase.dart' as _i42;
import '../../src/auth/presentation/bloc/auth_bloc.dart' as _i56;
import '../../src/auth/presentation/bloc/forgot_password_bloc.dart' as _i57;
import '../../src/home/data/data_sources/home_datasource.dart' as _i8;
import '../../src/home/data/repositories/home_repo.dart' as _i27;
import '../../src/home/domain/repositories/base_home_repo.dart' as _i26;
import '../../src/home/domain/use_cases/home_usecase.dart' as _i43;
import '../../src/home/presentation/bloc/home_bloc.dart' as _i58;
import '../../src/invoices/data/data_sources/products_datasource.dart' as _i12;
import '../../src/invoices/data/repositories/products_repo.dart' as _i31;
import '../../src/invoices/domain/repositories/base_products_repo.dart' as _i30;
import '../../src/invoices/domain/use_cases/products_usecase.dart' as _i45;
import '../../src/invoices/presentation/invoices/bloc/products_bloc.dart'
    as _i61;
import '../../src/nav_bar/presentation/bloc/nav_bar_bloc.dart' as _i10;
import '../../src/notifications/data/data_sources/notifications_datasource.dart'
    as _i11;
import '../../src/notifications/data/repositories/notifications_repo.dart'
    as _i29;
import '../../src/notifications/domain/repositories/base_notifications_repo.dart'
    as _i28;
import '../../src/notifications/domain/use_cases/notifications_usecase.dart'
    as _i44;
import '../../src/notifications/presentation/bloc/Notification_bloc.dart'
    as _i59;
import '../../src/profile/data/data_sources/profile_datasource.dart' as _i13;
import '../../src/profile/data/repositories/profile_repo.dart' as _i33;
import '../../src/profile/domain/repositories/base_profile_repo.dart' as _i32;
import '../../src/profile/domain/use_cases/profile_usecase.dart' as _i46;
import '../../src/profile/presentation/bloc/profile_bloc.dart' as _i62;
import '../../src/qayds/data/data_sources/stores_datasource.dart' as _i18;
import '../../src/qayds/data/repositories/stores_repo_imp.dart' as _i20;
import '../../src/qayds/domain/repositories/stores_repo.dart' as _i19;
import '../../src/qayds/domain/use_cases/stores_usecase.dart' as _i21;
import '../../src/qayds/presentation/qayd_payment/bloc/qayd_payment_bloc.dart'
    as _i47;
import '../../src/qayds/presentation/register_qayd/bloc/register_qayd_bloc.dart'
    as _i48;
import '../../src/reports/data/data_sources/reports_datasource.dart' as _i14;
import '../../src/reports/data/repositories/reports_repo.dart' as _i35;
import '../../src/reports/domain/repositories/base_reports_repo.dart' as _i34;
import '../../src/reports/domain/use_cases/reports_usecase.dart' as _i49;
import '../../src/reports/presentation/cubit/report_cubit.dart' as _i63;
import '../../src/settings/data/data_sources/settings_datasource.dart' as _i15;
import '../../src/settings/data/repositories/settings_repo.dart' as _i37;
import '../../src/settings/domain/repositories/base_settings_repo.dart' as _i36;
import '../../src/settings/domain/use_cases/settings_usecase.dart' as _i50;
import '../../src/settings/presentation/bloc/about_logeste_bloc.dart' as _i54;
import '../../src/settings/presentation/bloc/language_bloc.dart' as _i9;
import '../../src/settings/presentation/support/bloc/support_bloc.dart' as _i52;
import '../../src/splash/data/data_sources/splash_datasource.dart' as _i17;
import '../../src/splash/data/repositories/splash_repo.dart' as _i39;
import '../../src/splash/domain/repositories/base_splash_repo.dart' as _i38;
import '../../src/splash/domain/use_cases/splash_usecase.dart' as _i51;
import '../../src/splash/presentation/bloc/splash_bloc.dart' as _i64;
import '../../src/wallet/data/data_sources/wallet_datasource.dart' as _i22;
import '../../src/wallet/data/repositories/wallet_repo.dart' as _i41;
import '../../src/wallet/domain/repositories/base_wallet_repo.dart' as _i40;
import '../../src/wallet/domain/use_cases/wallet_usecase.dart' as _i53;
import '../../src/wallet/presentation/bloc/wallet_bloc.dart' as _i66;
import '../../src/wallet/presentation/payment_methods/bloc/add_payment_method_bloc.dart'
    as _i55;
import '../../src/wallet/presentation/payment_methods/bloc/payment_methods_bloc.dart'
    as _i60;
import '../../src/wallet/presentation/transactions/bloc/transactions_bloc.dart'
    as _i65;
import '../../src/wallet/presentation/wallet_history/bloc/wallet_history_bloc.dart'
    as _i67;
import 'injection_module.dart' as _i68;

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
  gh.factory<_i5.BaseAuthRepo>(() => _i6.AuthRepo(gh<_i3.AuthDataSource>()));
  gh.factory<_i7.ForgotPasswordDataSource>(
      () => _i7.ForgotPasswordDataSource(gh<_i4.Dio>()));
  gh.factory<_i8.HomeDatasource>(() => _i8.HomeDatasource(gh<_i4.Dio>()));
  gh.factory<_i9.LanguageCubit>(() => _i9.LanguageCubit());
  gh.factory<_i10.NavBarState>(() => _i10.NavBarState());
  gh.factory<_i11.NotificationsDatasource>(
      () => _i11.NotificationsDatasource(gh<_i4.Dio>()));
  gh.factory<_i12.ProductsDatasource>(
      () => _i12.ProductsDatasource(gh<_i4.Dio>()));
  gh.factory<_i13.ProfileDataSource>(
      () => _i13.ProfileDataSource(gh<_i4.Dio>()));
  gh.factory<_i14.ReportsDatasource>(
      () => _i14.ReportsDatasource(gh<_i4.Dio>()));
  gh.factory<_i15.SettingsDatasource>(
      () => _i15.SettingsDatasource(gh<_i4.Dio>()));
  await gh.factoryAsync<_i16.SharedPreferences>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i17.SplashDatasource>(() => _i17.SplashDatasource(gh<_i4.Dio>()));
  gh.factory<_i18.StoresDatasource>(() => _i18.StoresDatasource(gh<_i4.Dio>()));
  gh.factory<_i19.StoresRepo>(
      () => _i20.StoresRepoImp(gh<_i18.StoresDatasource>()));
  gh.factory<_i21.StoresUseCase>(
      () => _i21.StoresUseCase(gh<_i19.StoresRepo>()));
  gh.factory<_i22.WalletDatasource>(() => _i22.WalletDatasource(gh<_i4.Dio>()));
  gh.factory<_i23.AuthUseCase>(() => _i23.AuthUseCase(gh<_i5.BaseAuthRepo>()));
  gh.factory<_i24.BaseForgotPasswordRepo>(
      () => _i25.ForgotPasswordRepo(gh<_i7.ForgotPasswordDataSource>()));
  gh.factory<_i26.BaseHomeRepo>(() => _i27.HomeRepo(gh<_i8.HomeDatasource>()));
  gh.factory<_i28.BaseNotificationsRepo>(
      () => _i29.WalletRepo(gh<_i11.NotificationsDatasource>()));
  gh.factory<_i30.BaseProductsRepo>(
      () => _i31.ProductsRepo(gh<_i12.ProductsDatasource>()));
  gh.factory<_i32.BaseProfileRepo<dynamic>>(
      () => _i33.ProfileRepo(gh<_i13.ProfileDataSource>()));
  gh.factory<_i34.BaseReportsRepo>(
      () => _i35.ReportRepo(gh<_i14.ReportsDatasource>()));
  gh.factory<_i36.BaseSettingsRepo>(
      () => _i37.SettingsRepo(gh<_i15.SettingsDatasource>()));
  gh.factory<_i38.BaseSplashRepo>(
      () => _i39.SplashRepo(gh<_i17.SplashDatasource>()));
  gh.factory<_i40.BaseWalletRepo>(
      () => _i41.WalletRepo(gh<_i22.WalletDatasource>()));
  gh.factory<_i42.ForgotPasswordUseCase>(
      () => _i42.ForgotPasswordUseCase(gh<_i24.BaseForgotPasswordRepo>()));
  gh.factory<_i43.HomeUseCase>(() => _i43.HomeUseCase(gh<_i26.BaseHomeRepo>()));
  gh.factory<_i44.NotificationsUseCase>(
      () => _i44.NotificationsUseCase(gh<_i28.BaseNotificationsRepo>()));
  gh.factory<_i45.ProductsUseCase>(
      () => _i45.ProductsUseCase(gh<_i30.BaseProductsRepo>()));
  gh.factory<_i46.ProfileUseCase>(
      () => _i46.ProfileUseCase(gh<_i32.BaseProfileRepo<dynamic>>()));
  gh.factory<_i47.QaydPaymentCubit>(
      () => _i47.QaydPaymentCubit(gh<_i21.StoresUseCase>()));
  gh.factory<_i48.RegiserQaydCubit>(
      () => _i48.RegiserQaydCubit(gh<_i21.StoresUseCase>()));
  gh.factory<_i49.ReportsUseCase>(
      () => _i49.ReportsUseCase(gh<_i34.BaseReportsRepo>()));
  gh.factory<_i50.SettingsUseCase>(
      () => _i50.SettingsUseCase(gh<_i36.BaseSettingsRepo>()));
  gh.factory<_i51.SplashUseCase>(
      () => _i51.SplashUseCase(gh<_i38.BaseSplashRepo>()));
  gh.factory<_i52.SupportCubit>(
      () => _i52.SupportCubit(gh<_i50.SettingsUseCase>()));
  gh.factory<_i53.WalletUseCase>(
      () => _i53.WalletUseCase(gh<_i40.BaseWalletRepo>()));
  gh.factory<_i54.AboutLogesteCubit>(
      () => _i54.AboutLogesteCubit(gh<_i50.SettingsUseCase>()));
  gh.factory<_i55.AddPaymentMethodCubit>(
      () => _i55.AddPaymentMethodCubit(gh<_i53.WalletUseCase>()));
  gh.factory<_i56.AuthCubit>(() => _i56.AuthCubit(gh<_i23.AuthUseCase>()));
  gh.factory<_i57.ForgotPasswordCubit>(
      () => _i57.ForgotPasswordCubit(gh<_i42.ForgotPasswordUseCase>()));
  gh.factory<_i58.HomeCubit>(() => _i58.HomeCubit(gh<_i43.HomeUseCase>()));
  gh.factory<_i59.NotificationsCubit>(
      () => _i59.NotificationsCubit(gh<_i44.NotificationsUseCase>()));
  gh.factory<_i60.PaymentMethodsCubit>(
      () => _i60.PaymentMethodsCubit(gh<_i53.WalletUseCase>()));
  gh.factory<_i61.ProductsCubit>(
      () => _i61.ProductsCubit(gh<_i45.ProductsUseCase>()));
  gh.factory<_i62.ProfileBloc>(
      () => _i62.ProfileBloc(gh<_i46.ProfileUseCase>()));
  gh.factory<_i63.ReportsCubit>(
      () => _i63.ReportsCubit(gh<_i49.ReportsUseCase>()));
  gh.factory<_i64.SplashCubit>(
      () => _i64.SplashCubit(gh<_i51.SplashUseCase>()));
  gh.factory<_i65.TransactionsCubit>(
      () => _i65.TransactionsCubit(gh<_i53.WalletUseCase>()));
  gh.factory<_i66.WalletCubit>(
      () => _i66.WalletCubit(gh<_i53.WalletUseCase>()));
  gh.factory<_i67.WalletHistoryCubit>(
      () => _i67.WalletHistoryCubit(gh<_i53.WalletUseCase>()));
  return getIt;
}

class _$InjectionModule extends _i68.InjectionModule {}
