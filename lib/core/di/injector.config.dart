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
import 'package:shared_preferences/shared_preferences.dart' as _i24;

import '../../src/about_caf/presentation/bloc/about_caf_bloc.dart' as _i26;
import '../../src/auth/data/data_sources/auth_datasource.dart' as _i3;
import '../../src/auth/data/data_sources/forgot_password_datasource.dart'
    as _i7;
import '../../src/auth/data/repositories/auth_repo_imp.dart' as _i6;
import '../../src/auth/data/repositories/forgot_password_repo.dart' as _i9;
import '../../src/auth/domain/repositories/auth_repo.dart' as _i5;
import '../../src/auth/domain/repositories/forgot_password_repo.dart' as _i8;
import '../../src/auth/presentation/bloc/auth_bloc.dart' as _i27;
import '../../src/auth/presentation/bloc/forgot_password_bloc.dart' as _i35;
import '../../src/campaign_terms/presentation/bloc/campaign_terms_bloc.dart'
    as _i34;
import '../../src/hajj_transportation/presentation/bloc/hajj_transportation_bloc.dart'
    as _i36;
import '../../src/home/data/data_sources/home_datasource.dart' as _i10;
import '../../src/home/data/repositories/home_repo.dart' as _i29;
import '../../src/home/domain/repositories/base_home_repo.dart' as _i28;
import '../../src/home/domain/use_cases/home_usecase.dart' as _i37;
import '../../src/home/presentation/bloc/home_bloc.dart' as _i48;
import '../../src/live_broadcast/presentation/bloc/live_broadcast_bloc.dart'
    as _i38;
import '../../src/my_courses/data/data_sources/my_courses_datasource.dart'
    as _i12;
import '../../src/my_courses/data/repositories/my_courses_repo_imp.dart'
    as _i14;
import '../../src/my_courses/domain/repositories/my_courses_repo.dart' as _i13;
import '../../src/my_courses/presentation/bloc/my_courses_bloc.dart' as _i39;
import '../../src/nav_bar/presentation/bloc/nav_bar_bloc.dart' as _i15;
import '../../src/notes/presentation/bloc/notes_bloc.dart' as _i40;
import '../../src/notifications/data/data_sources/notifications_datasource.dart'
    as _i16;
import '../../src/notifications/data/repositories/notifications_repo_imp.dart'
    as _i18;
import '../../src/notifications/domain/repositories/notifications_repo.dart'
    as _i17;
import '../../src/notifications/presentation/bloc/notification_bloc.dart'
    as _i41;
import '../../src/photo_gallery/presentation/bloc/photo_gallery_bloc.dart'
    as _i42;
import '../../src/profile/data/data_sources/profile_datasource.dart' as _i19;
import '../../src/profile/data/repositories/profile_repo_imp.dart' as _i21;
import '../../src/profile/domain/repositories/profile_repo.dart' as _i20;
import '../../src/profile/presentation/bloc/profile_bloc.dart' as _i43;
import '../../src/program/presentation/bloc/programe_bloc.dart' as _i22;
import '../../src/settings/data/data_sources/settings_datasource.dart' as _i23;
import '../../src/settings/data/repositories/settings_repo.dart' as _i31;
import '../../src/settings/domain/repositories/base_settings_repo.dart' as _i30;
import '../../src/settings/domain/use_cases/settings_usecase.dart' as _i44;
import '../../src/settings/presentation/bloc/about_logeste_bloc.dart' as _i47;
import '../../src/settings/presentation/bloc/language_bloc.dart' as _i11;
import '../../src/settings/presentation/support/bloc/support_bloc.dart' as _i46;
import '../../src/splash/data/data_sources/splash_datasource.dart' as _i25;
import '../../src/splash/data/repositories/splash_repo.dart' as _i33;
import '../../src/splash/domain/repositories/base_splash_repo.dart' as _i32;
import '../../src/splash/domain/use_cases/splash_usecase.dart' as _i45;
import '../../src/splash/presentation/bloc/splash_bloc.dart' as _i49;
import 'injection_module.dart' as _i50;

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
  gh.factory<_i12.MyCoursesDatasource>(
      () => _i12.MyCoursesDatasource(gh<_i4.Dio>()));
  gh.factory<_i13.MyCoursesRepo>(
      () => _i14.MyCoursesRepoImp(gh<_i12.MyCoursesDatasource>()));
  gh.factory<_i15.NavBarState>(() => _i15.NavBarState());
  gh.factory<_i16.NotificationsDatasource>(
      () => _i16.NotificationsDatasource(gh<_i4.Dio>()));
  gh.factory<_i17.NotificationsRepo>(
      () => _i18.NotificationsRepoImp(gh<_i16.NotificationsDatasource>()));
  gh.factory<_i19.ProfileDataSource>(
      () => _i19.ProfileDataSource(gh<_i4.Dio>()));
  gh.factory<_i20.ProfileRepo>(
      () => _i21.ProfileRepoImp(gh<_i19.ProfileDataSource>()));
  gh.factory<_i22.ProgrameBloc>(
      () => _i22.ProgrameBloc(gh<_i20.ProfileRepo>()));
  gh.factory<_i23.SettingsDatasource>(
      () => _i23.SettingsDatasource(gh<_i4.Dio>()));
  await gh.factoryAsync<_i24.SharedPreferences>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i25.SplashDatasource>(() => _i25.SplashDatasource(gh<_i4.Dio>()));
  gh.factory<_i26.AboutCafBloc>(
      () => _i26.AboutCafBloc(gh<_i20.ProfileRepo>()));
  gh.factory<_i27.AuthCubit>(() => _i27.AuthCubit(gh<_i5.AuthRepo>()));
  gh.factory<_i28.BaseHomeRepo>(() => _i29.HomeRepo(gh<_i10.HomeDatasource>()));
  gh.factory<_i30.BaseSettingsRepo>(
      () => _i31.SettingsRepo(gh<_i23.SettingsDatasource>()));
  gh.factory<_i32.BaseSplashRepo>(
      () => _i33.SplashRepo(gh<_i25.SplashDatasource>()));
  gh.factory<_i34.CampaignTermsBloc>(
      () => _i34.CampaignTermsBloc(gh<_i20.ProfileRepo>()));
  gh.factory<_i35.ForgotPasswordCubit>(
      () => _i35.ForgotPasswordCubit(gh<_i8.ForgotPasswordRepo>()));
  gh.factory<_i36.HajjTransportationBloc>(
      () => _i36.HajjTransportationBloc(gh<_i20.ProfileRepo>()));
  gh.factory<_i37.HomeUseCase>(() => _i37.HomeUseCase(gh<_i28.BaseHomeRepo>()));
  gh.factory<_i38.LiveBroadcastBloc>(
      () => _i38.LiveBroadcastBloc(gh<_i20.ProfileRepo>()));
  gh.factory<_i39.MyCoursesCubit>(
      () => _i39.MyCoursesCubit(gh<_i13.MyCoursesRepo>()));
  gh.factory<_i40.NoteBloc>(() => _i40.NoteBloc(gh<_i20.ProfileRepo>()));
  gh.factory<_i41.NotificationsCubit>(
      () => _i41.NotificationsCubit(gh<_i17.NotificationsRepo>()));
  gh.factory<_i42.PhotoGalleryBloc>(
      () => _i42.PhotoGalleryBloc(gh<_i20.ProfileRepo>()));
  gh.factory<_i43.ProfileBloc>(() => _i43.ProfileBloc(gh<_i20.ProfileRepo>()));
  gh.factory<_i44.SettingsUseCase>(
      () => _i44.SettingsUseCase(gh<_i30.BaseSettingsRepo>()));
  gh.factory<_i45.SplashUseCase>(
      () => _i45.SplashUseCase(gh<_i32.BaseSplashRepo>()));
  gh.factory<_i46.SupportCubit>(
      () => _i46.SupportCubit(gh<_i44.SettingsUseCase>()));
  gh.factory<_i47.AboutLogesteCubit>(
      () => _i47.AboutLogesteCubit(gh<_i44.SettingsUseCase>()));
  gh.factory<_i48.HomeCubit>(() => _i48.HomeCubit(gh<_i37.HomeUseCase>()));
  gh.factory<_i49.SplashCubit>(
      () => _i49.SplashCubit(gh<_i45.SplashUseCase>()));
  return getIt;
}

class _$InjectionModule extends _i50.InjectionModule {}
