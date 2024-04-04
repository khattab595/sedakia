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
import 'package:shared_preferences/shared_preferences.dart' as _i17;

import '../../src/auth/data/data_sources/auth_datasource.dart' as _i3;
import '../../src/auth/data/data_sources/forgot_password_datasource.dart'
    as _i10;
import '../../src/auth/data/repositories/auth_repo.dart' as _i6;
import '../../src/auth/data/repositories/forgot_password_repo.dart' as _i32;
import '../../src/auth/domain/repositories/base_auth_repo.dart' as _i5;
import '../../src/auth/domain/repositories/base_forgot_password_repo.dart'
    as _i31;
import '../../src/auth/domain/use_cases/auth_usecase.dart' as _i24;
import '../../src/auth/domain/use_cases/forgot_password_usecase.dart' as _i50;
import '../../src/auth/presentation/bloc/auth_bloc.dart' as _i61;
import '../../src/auth/presentation/bloc/forgot_password_bloc.dart' as _i65;
import '../../src/categories/data/data_sources/categories_datasource.dart'
    as _i7;
import '../../src/categories/data/repositories/categories_repo.dart' as _i26;
import '../../src/categories/domain/repositories/base_categories_repo.dart'
    as _i25;
import '../../src/categories/domain/use_cases/categories_usecase.dart' as _i47;
import '../../src/categories/presentation/bloc/categories_bloc.dart' as _i62;
import '../../src/community/data/data_sources/community_datasource.dart' as _i8;
import '../../src/community/data/repositories/community_repo.dart' as _i28;
import '../../src/community/domain/repositories/base_community_repo.dart'
    as _i27;
import '../../src/community/domain/use_cases/community_usecase.dart' as _i48;
import '../../src/community/presentation/bloc/community_bloc.dart' as _i63;
import '../../src/favorites/data/data_sources/favorites_datasource.dart' as _i9;
import '../../src/favorites/data/repositories/favorites_repo.dart' as _i30;
import '../../src/favorites/domain/repositories/base_favorites_repo.dart'
    as _i29;
import '../../src/favorites/domain/use_cases/favorites_usecase.dart' as _i49;
import '../../src/favorites/presentation/bloc/favorites_bloc.dart' as _i64;
import '../../src/home/data/data_sources/home_datasource.dart' as _i11;
import '../../src/home/data/repositories/home_repo.dart' as _i34;
import '../../src/home/domain/repositories/base_home_repo.dart' as _i33;
import '../../src/home/domain/use_cases/home_usecase.dart' as _i51;
import '../../src/home/presentation/bloc/home_bloc.dart' as _i66;
import '../../src/notifications/data/data_sources/notifications_datasource.dart'
    as _i13;
import '../../src/notifications/data/repositories/notifications_repo.dart'
    as _i36;
import '../../src/notifications/domain/repositories/base_notifications_repo.dart'
    as _i35;
import '../../src/notifications/domain/use_cases/notifications_usecase.dart'
    as _i52;
import '../../src/notifications/presentation/bloc/Notification_bloc.dart'
    as _i67;
import '../../src/invoices/data/data_sources/products_datasource.dart' as _i14;
import '../../src/invoices/data/repositories/products_repo.dart' as _i38;
import '../../src/invoices/domain/repositories/base_products_repo.dart' as _i37;
import '../../src/invoices/domain/use_cases/products_usecase.dart' as _i53;
import '../../src/invoices/presentation/product/bloc/products_bloc.dart'
    as _i69;
import '../../src/profile/data/data_sources/profile_datasource.dart' as _i15;
import '../../src/profile/data/repositories/profile_repo.dart' as _i40;
import '../../src/profile/domain/repositories/base_profile_repo.dart' as _i39;
import '../../src/profile/domain/use_cases/profile_usecase.dart' as _i54;
import '../../src/profile/presentation/bloc/profile_bloc.dart' as _i70;
import '../../src/settings/data/data_sources/settings_datasource.dart' as _i16;
import '../../src/settings/data/repositories/settings_repo.dart' as _i42;
import '../../src/settings/domain/repositories/base_settings_repo.dart' as _i41;
import '../../src/settings/domain/use_cases/settings_usecase.dart' as _i55;
import '../../src/settings/presentation/bloc/about_logeste_bloc.dart' as _i59;
import '../../src/settings/presentation/bloc/language_bloc.dart' as _i12;
import '../../src/splash/data/data_sources/splash_datasource.dart' as _i18;
import '../../src/splash/data/repositories/splash_repo.dart' as _i44;
import '../../src/splash/domain/repositories/base_splash_repo.dart' as _i43;
import '../../src/splash/domain/use_cases/splash_usecase.dart' as _i56;
import '../../src/splash/presentation/bloc/splash_bloc.dart' as _i71;
import '../../src/qayds/data/data_sources/stores_datasource.dart' as _i19;
import '../../src/qayds/data/repositories/stores_repo_imp.dart' as _i21;
import '../../src/qayds/domain/repositories/stores_repo.dart' as _i20;
import '../../src/qayds/domain/use_cases/stores_usecase.dart' as _i22;
import '../../src/qayds/presentation/bloc/stores_bloc.dart' as _i57;
import '../../src/wallet/data/data_sources/wallet_datasource.dart' as _i23;
import '../../src/wallet/data/repositories/wallet_repo.dart' as _i46;
import '../../src/wallet/domain/repositories/base_wallet_repo.dart' as _i45;
import '../../src/wallet/domain/use_cases/wallet_usecase.dart' as _i58;
import '../../src/wallet/presentation/bloc/wallet_bloc.dart' as _i73;
import '../../src/wallet/presentation/payment_methods/bloc/add_payment_method_bloc.dart'
    as _i60;
import '../../src/wallet/presentation/payment_methods/bloc/payment_methods_bloc.dart'
    as _i68;
import '../../src/wallet/presentation/transactions/bloc/transactions_bloc.dart'
    as _i72;
import '../../src/wallet/presentation/wallet_history/bloc/wallet_history_bloc.dart'
    as _i74;
import 'injection_module.dart' as _i75;

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
  gh.factory<_i13.NotificationsDatasource>(
      () => _i13.NotificationsDatasource(gh<_i4.Dio>()));
  gh.factory<_i14.ProductsDatasource>(
      () => _i14.ProductsDatasource(gh<_i4.Dio>()));
  gh.factory<_i15.ProfileDataSource>(
      () => _i15.ProfileDataSource(gh<_i4.Dio>()));
  gh.factory<_i16.SettingsDatasource>(
      () => _i16.SettingsDatasource(gh<_i4.Dio>()));
  await gh.factoryAsync<_i17.SharedPreferences>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i18.SplashDatasource>(() => _i18.SplashDatasource(gh<_i4.Dio>()));
  gh.factory<_i19.StoresDatasource>(() => _i19.StoresDatasource(gh<_i4.Dio>()));
  gh.factory<_i20.StoresRepo>(
      () => _i21.StoresRepoImp(gh<_i19.StoresDatasource>()));
  gh.factory<_i22.StoresUseCase>(
      () => _i22.StoresUseCase(gh<_i20.StoresRepo>()));
  gh.factory<_i23.WalletDatasource>(() => _i23.WalletDatasource(gh<_i4.Dio>()));
  gh.factory<_i24.AuthUseCase>(() => _i24.AuthUseCase(gh<_i5.BaseAuthRepo>()));
  gh.factory<_i25.BaseCategoriesRepo>(
      () => _i26.CategoriesRepo(gh<_i7.CategoriesDatasource>()));
  gh.factory<_i27.BaseCommunityRepo>(
      () => _i28.CommunityRepo(gh<_i8.CommunityDatasource>()));
  gh.factory<_i29.BaseFavoritesRepo>(
      () => _i30.FavoritesRepo(gh<_i9.FavoritesDatasource>()));
  gh.factory<_i31.BaseForgotPasswordRepo>(
      () => _i32.ForgotPasswordRepo(gh<_i10.ForgotPasswordDataSource>()));
  gh.factory<_i33.BaseHomeRepo>(() => _i34.HomeRepo(gh<_i11.HomeDatasource>()));
  gh.factory<_i35.BaseNotificationsRepo>(
      () => _i36.WalletRepo(gh<_i13.NotificationsDatasource>()));
  gh.factory<_i37.BaseProductsRepo>(
      () => _i38.ProductsRepo(gh<_i14.ProductsDatasource>()));
  gh.factory<_i39.BaseProfileRepo<dynamic>>(
      () => _i40.ProfileRepo(gh<_i15.ProfileDataSource>()));
  gh.factory<_i41.BaseSettingsRepo>(
      () => _i42.SettingsRepo(gh<_i16.SettingsDatasource>()));
  gh.factory<_i43.BaseSplashRepo>(
      () => _i44.SplashRepo(gh<_i18.SplashDatasource>()));
  gh.factory<_i45.BaseWalletRepo>(
      () => _i46.WalletRepo(gh<_i23.WalletDatasource>()));
  gh.factory<_i47.CategoriesUseCase>(
      () => _i47.CategoriesUseCase(gh<_i25.BaseCategoriesRepo>()));
  gh.factory<_i48.CommunityUseCase>(
      () => _i48.CommunityUseCase(gh<_i27.BaseCommunityRepo>()));
  gh.factory<_i49.FavoritesUseCase>(
      () => _i49.FavoritesUseCase(gh<_i29.BaseFavoritesRepo>()));
  gh.factory<_i50.ForgotPasswordUseCase>(
      () => _i50.ForgotPasswordUseCase(gh<_i31.BaseForgotPasswordRepo>()));
  gh.factory<_i51.HomeUseCase>(() => _i51.HomeUseCase(gh<_i33.BaseHomeRepo>()));
  gh.factory<_i52.NotificationsUseCase>(
      () => _i52.NotificationsUseCase(gh<_i35.BaseNotificationsRepo>()));
  gh.factory<_i53.ProductsUseCase>(
      () => _i53.ProductsUseCase(gh<_i37.BaseProductsRepo>()));
  gh.factory<_i54.ProfileUseCase>(
      () => _i54.ProfileUseCase(gh<_i39.BaseProfileRepo<dynamic>>()));
  gh.factory<_i55.SettingsUseCase>(
      () => _i55.SettingsUseCase(gh<_i41.BaseSettingsRepo>()));
  gh.factory<_i56.SplashUseCase>(
      () => _i56.SplashUseCase(gh<_i43.BaseSplashRepo>()));
  gh.factory<_i57.StoresCubit>(
      () => _i57.StoresCubit(gh<_i22.StoresUseCase>()));
  gh.factory<_i58.WalletUseCase>(
      () => _i58.WalletUseCase(gh<_i45.BaseWalletRepo>()));
  gh.factory<_i59.AboutLogesteCubit>(
      () => _i59.AboutLogesteCubit(gh<_i55.SettingsUseCase>()));
  gh.factory<_i60.AddPaymentMethodCubit>(
      () => _i60.AddPaymentMethodCubit(gh<_i58.WalletUseCase>()));
  gh.factory<_i61.AuthCubit>(() => _i61.AuthCubit(gh<_i24.AuthUseCase>()));
  gh.factory<_i62.CategoriesCubit>(
      () => _i62.CategoriesCubit(gh<_i47.CategoriesUseCase>()));
  gh.factory<_i63.CommunityCubit>(
      () => _i63.CommunityCubit(gh<_i48.CommunityUseCase>()));
  gh.factory<_i64.FavoritesCubit>(
      () => _i64.FavoritesCubit(gh<_i49.FavoritesUseCase>()));
  gh.factory<_i65.ForgotPasswordCubit>(
      () => _i65.ForgotPasswordCubit(gh<_i50.ForgotPasswordUseCase>()));
  gh.factory<_i66.HomeCubit>(() => _i66.HomeCubit(
        gh<_i51.HomeUseCase>(),
        gh<_i49.FavoritesUseCase>(),
      ));
  gh.factory<_i67.NotificationsCubit>(
      () => _i67.NotificationsCubit(gh<_i52.NotificationsUseCase>()));
  gh.factory<_i68.PaymentMethodsCubit>(
      () => _i68.PaymentMethodsCubit(gh<_i58.WalletUseCase>()));
  gh.factory<_i69.ProductsCubit>(() => _i69.ProductsCubit(
        gh<_i53.ProductsUseCase>(),
        gh<_i49.FavoritesUseCase>(),
      ));
  gh.factory<_i70.ProfileBloc>(
      () => _i70.ProfileBloc(gh<_i54.ProfileUseCase>()));
  gh.factory<_i71.SplashCubit>(
      () => _i71.SplashCubit(gh<_i56.SplashUseCase>()));
  gh.factory<_i72.TransactionsCubit>(
      () => _i72.TransactionsCubit(gh<_i58.WalletUseCase>()));
  gh.factory<_i73.WalletCubit>(
      () => _i73.WalletCubit(gh<_i58.WalletUseCase>()));
  gh.factory<_i74.WalletHistoryCubit>(
      () => _i74.WalletHistoryCubit(gh<_i58.WalletUseCase>()));
  return getIt;
}

class _$InjectionModule extends _i75.InjectionModule {}
