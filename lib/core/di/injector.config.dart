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
import 'package:shared_preferences/shared_preferences.dart' as _i18;

import '../../src/auth/data/data_sources/auth_datasource.dart' as _i3;
import '../../src/auth/data/data_sources/forgot_password_datasource.dart'
    as _i10;
import '../../src/auth/data/repositories/auth_repo.dart' as _i6;
import '../../src/auth/data/repositories/forgot_password_repo.dart' as _i33;
import '../../src/auth/domain/repositories/base_auth_repo.dart' as _i5;
import '../../src/auth/domain/repositories/base_forgot_password_repo.dart'
    as _i32;
import '../../src/auth/domain/use_cases/auth_usecase.dart' as _i25;
import '../../src/auth/domain/use_cases/forgot_password_usecase.dart' as _i51;
import '../../src/auth/presentation/bloc/auth_bloc.dart' as _i64;
import '../../src/auth/presentation/bloc/forgot_password_bloc.dart' as _i68;
import '../../src/categories/data/data_sources/categories_datasource.dart'
    as _i7;
import '../../src/categories/data/repositories/categories_repo.dart' as _i27;
import '../../src/categories/domain/repositories/base_categories_repo.dart'
    as _i26;
import '../../src/categories/domain/use_cases/categories_usecase.dart' as _i48;
import '../../src/categories/presentation/bloc/categories_bloc.dart' as _i65;
import '../../src/community/data/data_sources/community_datasource.dart' as _i8;
import '../../src/community/data/repositories/community_repo.dart' as _i29;
import '../../src/community/domain/repositories/base_community_repo.dart'
    as _i28;
import '../../src/community/domain/use_cases/community_usecase.dart' as _i49;
import '../../src/community/presentation/bloc/community_bloc.dart' as _i66;
import '../../src/favorites/data/data_sources/favorites_datasource.dart' as _i9;
import '../../src/favorites/data/repositories/favorites_repo.dart' as _i31;
import '../../src/favorites/domain/repositories/base_favorites_repo.dart'
    as _i30;
import '../../src/favorites/domain/use_cases/favorites_usecase.dart' as _i50;
import '../../src/favorites/presentation/bloc/favorites_bloc.dart' as _i67;
import '../../src/home/data/data_sources/home_datasource.dart' as _i11;
import '../../src/home/data/repositories/home_repo.dart' as _i35;
import '../../src/home/domain/repositories/base_home_repo.dart' as _i34;
import '../../src/home/domain/use_cases/home_usecase.dart' as _i52;
import '../../src/home/presentation/bloc/home_bloc.dart' as _i69;
import '../../src/invoices/data/data_sources/products_datasource.dart' as _i15;
import '../../src/invoices/data/repositories/products_repo.dart' as _i39;
import '../../src/invoices/domain/repositories/base_products_repo.dart' as _i38;
import '../../src/invoices/domain/use_cases/products_usecase.dart' as _i54;
import '../../src/invoices/presentation/product/bloc/products_bloc.dart'
    as _i72;
import '../../src/nav_bar/presentation/bloc/nav_bar_bloc.dart' as _i13;
import '../../src/notifications/data/data_sources/notifications_datasource.dart'
    as _i14;
import '../../src/notifications/data/repositories/notifications_repo.dart'
    as _i37;
import '../../src/notifications/domain/repositories/base_notifications_repo.dart'
    as _i36;
import '../../src/notifications/domain/use_cases/notifications_usecase.dart'
    as _i53;
import '../../src/notifications/presentation/bloc/Notification_bloc.dart'
    as _i70;
import '../../src/profile/data/data_sources/profile_datasource.dart' as _i16;
import '../../src/profile/data/repositories/profile_repo.dart' as _i41;
import '../../src/profile/domain/repositories/base_profile_repo.dart' as _i40;
import '../../src/profile/domain/use_cases/profile_usecase.dart' as _i55;
import '../../src/profile/presentation/bloc/profile_bloc.dart' as _i73;
import '../../src/qayds/data/data_sources/stores_datasource.dart' as _i20;
import '../../src/qayds/data/repositories/stores_repo_imp.dart' as _i22;
import '../../src/qayds/domain/repositories/stores_repo.dart' as _i21;
import '../../src/qayds/domain/use_cases/stores_usecase.dart' as _i23;
import '../../src/qayds/presentation/qayd_payment/bloc/qayd_payment_bloc.dart'
    as _i56;
import '../../src/qayds/presentation/register_qayd/bloc/register_qayd_bloc.dart'
    as _i57;
import '../../src/settings/data/data_sources/settings_datasource.dart' as _i17;
import '../../src/settings/data/repositories/settings_repo.dart' as _i43;
import '../../src/settings/domain/repositories/base_settings_repo.dart' as _i42;
import '../../src/settings/domain/use_cases/settings_usecase.dart' as _i58;
import '../../src/settings/presentation/bloc/about_logeste_bloc.dart' as _i62;
import '../../src/settings/presentation/bloc/language_bloc.dart' as _i12;
import '../../src/settings/presentation/support/bloc/support_bloc.dart' as _i60;
import '../../src/splash/data/data_sources/splash_datasource.dart' as _i19;
import '../../src/splash/data/repositories/splash_repo.dart' as _i45;
import '../../src/splash/domain/repositories/base_splash_repo.dart' as _i44;
import '../../src/splash/domain/use_cases/splash_usecase.dart' as _i59;
import '../../src/splash/presentation/bloc/splash_bloc.dart' as _i74;
import '../../src/wallet/data/data_sources/wallet_datasource.dart' as _i24;
import '../../src/wallet/data/repositories/wallet_repo.dart' as _i47;
import '../../src/wallet/domain/repositories/base_wallet_repo.dart' as _i46;
import '../../src/wallet/domain/use_cases/wallet_usecase.dart' as _i61;
import '../../src/wallet/presentation/bloc/wallet_bloc.dart' as _i76;
import '../../src/wallet/presentation/payment_methods/bloc/add_payment_method_bloc.dart'
    as _i63;
import '../../src/wallet/presentation/payment_methods/bloc/payment_methods_bloc.dart'
    as _i71;
import '../../src/wallet/presentation/transactions/bloc/transactions_bloc.dart'
    as _i75;
import '../../src/wallet/presentation/wallet_history/bloc/wallet_history_bloc.dart'
    as _i77;
import 'injection_module.dart' as _i78;

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
  gh.factory<_i7.CategoriesDatasource>(
      () => _i7.CategoriesDatasource(gh<_i4.Dio>()));
  gh.factory<_i8.CommunityDatasource>(
      () => _i8.CommunityDatasource(gh<_i4.Dio>()));
  gh.factory<_i9.FavoritesDatasource>(
      () => _i9.FavoritesDatasource(gh<_i4.Dio>()));
  gh.factory<_i10.ForgotPasswordDataSource>(
      () => _i10.ForgotPasswordDataSource(gh<_i4.Dio>()));
  gh.factory<_i11.HomeDatasource>(() => _i11.HomeDatasource(gh<_i4.Dio>()));
  gh.factory<_i12.LanguageCubit>(() => _i12.LanguageCubit());
  gh.factory<_i13.NavBarState>(() => _i13.NavBarState());
  gh.factory<_i14.NotificationsDatasource>(
      () => _i14.NotificationsDatasource(gh<_i4.Dio>()));
  gh.factory<_i15.ProductsDatasource>(
      () => _i15.ProductsDatasource(gh<_i4.Dio>()));
  gh.factory<_i16.ProfileDataSource>(
      () => _i16.ProfileDataSource(gh<_i4.Dio>()));
  gh.factory<_i17.SettingsDatasource>(
      () => _i17.SettingsDatasource(gh<_i4.Dio>()));
  await gh.factoryAsync<_i18.SharedPreferences>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i19.SplashDatasource>(() => _i19.SplashDatasource(gh<_i4.Dio>()));
  gh.factory<_i20.StoresDatasource>(() => _i20.StoresDatasource(gh<_i4.Dio>()));
  gh.factory<_i21.StoresRepo>(
      () => _i22.StoresRepoImp(gh<_i20.StoresDatasource>()));
  gh.factory<_i23.StoresUseCase>(
      () => _i23.StoresUseCase(gh<_i21.StoresRepo>()));
  gh.factory<_i24.WalletDatasource>(() => _i24.WalletDatasource(gh<_i4.Dio>()));
  gh.factory<_i25.AuthUseCase>(() => _i25.AuthUseCase(gh<_i5.BaseAuthRepo>()));
  gh.factory<_i26.BaseCategoriesRepo>(
      () => _i27.CategoriesRepo(gh<_i7.CategoriesDatasource>()));
  gh.factory<_i28.BaseCommunityRepo>(
      () => _i29.CommunityRepo(gh<_i8.CommunityDatasource>()));
  gh.factory<_i30.BaseFavoritesRepo>(
      () => _i31.FavoritesRepo(gh<_i9.FavoritesDatasource>()));
  gh.factory<_i32.BaseForgotPasswordRepo>(
      () => _i33.ForgotPasswordRepo(gh<_i10.ForgotPasswordDataSource>()));
  gh.factory<_i34.BaseHomeRepo>(() => _i35.HomeRepo(gh<_i11.HomeDatasource>()));
  gh.factory<_i36.BaseNotificationsRepo>(
      () => _i37.WalletRepo(gh<_i14.NotificationsDatasource>()));
  gh.factory<_i38.BaseProductsRepo>(
      () => _i39.ProductsRepo(gh<_i15.ProductsDatasource>()));
  gh.factory<_i40.BaseProfileRepo<dynamic>>(
      () => _i41.ProfileRepo(gh<_i16.ProfileDataSource>()));
  gh.factory<_i42.BaseSettingsRepo>(
      () => _i43.SettingsRepo(gh<_i17.SettingsDatasource>()));
  gh.factory<_i44.BaseSplashRepo>(
      () => _i45.SplashRepo(gh<_i19.SplashDatasource>()));
  gh.factory<_i46.BaseWalletRepo>(
      () => _i47.WalletRepo(gh<_i24.WalletDatasource>()));
  gh.factory<_i48.CategoriesUseCase>(
      () => _i48.CategoriesUseCase(gh<_i26.BaseCategoriesRepo>()));
  gh.factory<_i49.CommunityUseCase>(
      () => _i49.CommunityUseCase(gh<_i28.BaseCommunityRepo>()));
  gh.factory<_i50.FavoritesUseCase>(
      () => _i50.FavoritesUseCase(gh<_i30.BaseFavoritesRepo>()));
  gh.factory<_i51.ForgotPasswordUseCase>(
      () => _i51.ForgotPasswordUseCase(gh<_i32.BaseForgotPasswordRepo>()));
  gh.factory<_i52.HomeUseCase>(() => _i52.HomeUseCase(gh<_i34.BaseHomeRepo>()));
  gh.factory<_i53.NotificationsUseCase>(
      () => _i53.NotificationsUseCase(gh<_i36.BaseNotificationsRepo>()));
  gh.factory<_i54.ProductsUseCase>(
      () => _i54.ProductsUseCase(gh<_i38.BaseProductsRepo>()));
  gh.factory<_i55.ProfileUseCase>(
      () => _i55.ProfileUseCase(gh<_i40.BaseProfileRepo<dynamic>>()));
  gh.factory<_i56.QaydPaymentCubit>(
      () => _i56.QaydPaymentCubit(gh<_i23.StoresUseCase>()));
  gh.factory<_i57.RegiserQaydCubit>(
      () => _i57.RegiserQaydCubit(gh<_i23.StoresUseCase>()));
  gh.factory<_i58.SettingsUseCase>(
      () => _i58.SettingsUseCase(gh<_i42.BaseSettingsRepo>()));
  gh.factory<_i59.SplashUseCase>(
      () => _i59.SplashUseCase(gh<_i44.BaseSplashRepo>()));
  gh.factory<_i60.SupportCubit>(
      () => _i60.SupportCubit(gh<_i58.SettingsUseCase>()));
  gh.factory<_i61.WalletUseCase>(
      () => _i61.WalletUseCase(gh<_i46.BaseWalletRepo>()));
  gh.factory<_i62.AboutLogesteCubit>(
      () => _i62.AboutLogesteCubit(gh<_i58.SettingsUseCase>()));
  gh.factory<_i63.AddPaymentMethodCubit>(
      () => _i63.AddPaymentMethodCubit(gh<_i61.WalletUseCase>()));
  gh.factory<_i64.AuthCubit>(() => _i64.AuthCubit(gh<_i25.AuthUseCase>()));
  gh.factory<_i65.CategoriesCubit>(
      () => _i65.CategoriesCubit(gh<_i48.CategoriesUseCase>()));
  gh.factory<_i66.CommunityCubit>(
      () => _i66.CommunityCubit(gh<_i49.CommunityUseCase>()));
  gh.factory<_i67.FavoritesCubit>(
      () => _i67.FavoritesCubit(gh<_i50.FavoritesUseCase>()));
  gh.factory<_i68.ForgotPasswordCubit>(
      () => _i68.ForgotPasswordCubit(gh<_i51.ForgotPasswordUseCase>()));
  gh.factory<_i69.HomeCubit>(() => _i69.HomeCubit(
        gh<_i52.HomeUseCase>(),
        gh<_i50.FavoritesUseCase>(),
      ));
  gh.factory<_i70.NotificationsCubit>(
      () => _i70.NotificationsCubit(gh<_i53.NotificationsUseCase>()));
  gh.factory<_i71.PaymentMethodsCubit>(
      () => _i71.PaymentMethodsCubit(gh<_i61.WalletUseCase>()));
  gh.factory<_i72.ProductsCubit>(() => _i72.ProductsCubit(
        gh<_i54.ProductsUseCase>(),
        gh<_i50.FavoritesUseCase>(),
      ));
  gh.factory<_i73.ProfileBloc>(
      () => _i73.ProfileBloc(gh<_i55.ProfileUseCase>()));
  gh.factory<_i74.SplashCubit>(
      () => _i74.SplashCubit(gh<_i59.SplashUseCase>()));
  gh.factory<_i75.TransactionsCubit>(
      () => _i75.TransactionsCubit(gh<_i61.WalletUseCase>()));
  gh.factory<_i76.WalletCubit>(
      () => _i76.WalletCubit(gh<_i61.WalletUseCase>()));
  gh.factory<_i77.WalletHistoryCubit>(
      () => _i77.WalletHistoryCubit(gh<_i61.WalletUseCase>()));
  return getIt;
}

class _$InjectionModule extends _i78.InjectionModule {}
