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
import 'package:shared_preferences/shared_preferences.dart' as _i30;

import '../../src/attendance_record/data/data_sources/attendance_record_datasource.dart'
    as _i3;
import '../../src/attendance_record/data/repositories/attendance_record_repo_imp.dart'
    as _i6;
import '../../src/attendance_record/domin/repositories/attendance_record_repo.dart'
    as _i5;
import '../../src/attendance_record/presentation/bloc/attendance_record_bloc.dart'
    as _i34;
import '../../src/auth/data/data_sources/auth_datasource.dart' as _i7;
import '../../src/auth/data/data_sources/forgot_password_datasource.dart'
    as _i11;
import '../../src/auth/data/repositories/auth_repo_imp.dart' as _i9;
import '../../src/auth/data/repositories/forgot_password_repo_imp.dart' as _i13;
import '../../src/auth/domain/repositories/auth_repo.dart' as _i8;
import '../../src/auth/domain/repositories/forgot_password_repo.dart' as _i12;
import '../../src/auth/presentation/bloc/auth_bloc.dart' as _i35;
import '../../src/auth/presentation/bloc/forgot_password_bloc.dart' as _i38;
import '../../src/home/data/data_sources/home_datasource.dart' as _i14;
import '../../src/home/data/repositories/home_repo_imp.dart' as _i16;
import '../../src/home/domain/repositories/home_repo.dart' as _i15;
import '../../src/home/presentation/bloc/home_bloc.dart' as _i39;
import '../../src/nav_bar/presentation/bloc/nav_bar_bloc.dart' as _i17;
import '../../src/notifications/data/data_sources/notifications_datasource.dart'
    as _i18;
import '../../src/notifications/data/repositories/notifications_repo_imp.dart'
    as _i20;
import '../../src/notifications/domain/repositories/notifications_repo.dart'
    as _i19;
import '../../src/notifications/presentation/bloc/notification_bloc.dart'
    as _i40;
import '../../src/profile/data/data_sources/profile_datasource.dart' as _i21;
import '../../src/profile/data/repositories/profile_repo_imp.dart' as _i23;
import '../../src/profile/domain/repositories/profile_repo.dart' as _i22;
import '../../src/profile/presentation/bloc/profile_bloc.dart' as _i41;
import '../../src/request_log/data/data_sources/request_log_datasource.dart'
    as _i24;
import '../../src/request_log/data/repositories/request_log_repo_imp.dart'
    as _i26;
import '../../src/request_log/domain/repositories/request_log_repo.dart'
    as _i25;
import '../../src/request_log/presentation/add_request/bloc/add_request_bloc.dart'
    as _i33;
import '../../src/request_log/presentation/view/bloc/request_log_bloc.dart'
    as _i42;
import '../../src/settings/data/data_sources/settings_datasource.dart' as _i27;
import '../../src/settings/data/repositories/settings_repo_imp.dart' as _i29;
import '../../src/settings/domain/repositories/settings_repo.dart' as _i28;
import '../../src/settings/presentation/bloc/about_logeste_bloc.dart' as _i32;
import '../../src/splash/data/data_sources/splash_datasource.dart' as _i31;
import '../../src/splash/data/repositories/splash_repo.dart' as _i37;
import '../../src/splash/domain/repositories/base_splash_repo.dart' as _i36;
import '../../src/splash/domain/use_cases/splash_usecase.dart' as _i43;
import '../../src/splash/presentation/bloc/splash_bloc.dart' as _i44;
import 'injection_module.dart' as _i45;

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
  gh.factory<_i3.AttendanceRecordDatasource>(
      () => _i3.AttendanceRecordDatasource(gh<_i4.Dio>()));
  gh.factory<_i5.AttendanceRecordRepo>(
      () => _i6.AttendanceRecordRepoImp(gh<_i3.AttendanceRecordDatasource>()));
  gh.factory<_i7.AuthDataSource>(() => _i7.AuthDataSource(gh<_i4.Dio>()));
  gh.factory<_i8.AuthRepo>(() => _i9.AuthRepoImp(gh<_i7.AuthDataSource>()));
  gh.factory<_i11.ForgotPasswordDataSource>(
      () => _i11.ForgotPasswordDataSource(gh<_i4.Dio>()));
  gh.factory<_i12.ForgotPasswordRepo>(
      () => _i13.ForgotPasswordRepoImp(gh<_i11.ForgotPasswordDataSource>()));
  gh.factory<_i14.HomeDatasource>(() => _i14.HomeDatasource(gh<_i4.Dio>()));
  gh.factory<_i15.HomeRepo>(() => _i16.HomeRepoImp(gh<_i14.HomeDatasource>()));
  gh.factory<_i17.NavBarState>(() => _i17.NavBarState());
  gh.factory<_i18.NotificationsDatasource>(
      () => _i18.NotificationsDatasource(gh<_i4.Dio>()));
  gh.factory<_i19.NotificationsRepo>(
      () => _i20.NotificationsRepoImp(gh<_i18.NotificationsDatasource>()));
  gh.factory<_i21.ProfileDataSource>(
      () => _i21.ProfileDataSource(gh<_i4.Dio>()));
  gh.factory<_i22.ProfileRepo>(
      () => _i23.ProfileRepoImp(gh<_i21.ProfileDataSource>()));
  gh.factory<_i24.RequestLogDatasource>(
      () => _i24.RequestLogDatasource(gh<_i4.Dio>()));
  gh.factory<_i25.RequestLogRepo>(
      () => _i26.RequestLogImp(gh<_i24.RequestLogDatasource>()));
  gh.factory<_i27.SettingsDatasource>(
      () => _i27.SettingsDatasource(gh<_i4.Dio>()));
  gh.factory<_i28.SettingsRepo>(
      () => _i29.SettingsRepoImp(gh<_i27.SettingsDatasource>()));
  await gh.factoryAsync<_i30.SharedPreferences>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i31.SplashDatasource>(() => _i31.SplashDatasource(gh<_i4.Dio>()));
  gh.factory<_i32.AboutCubit>(() => _i32.AboutCubit(gh<_i28.SettingsRepo>()));
  gh.factory<_i33.AddRequestCubit>(
      () => _i33.AddRequestCubit(gh<_i25.RequestLogRepo>()));
  gh.factory<_i34.AttendanceRecordCubit>(
      () => _i34.AttendanceRecordCubit(gh<_i5.AttendanceRecordRepo>()));
  gh.factory<_i35.AuthCubit>(() => _i35.AuthCubit(gh<_i8.AuthRepo>()));
  gh.factory<_i36.BaseSplashRepo>(
      () => _i37.SplashRepo(gh<_i31.SplashDatasource>()));
  gh.factory<_i38.ForgotPasswordCubit>(() => _i38.ForgotPasswordCubit(
        gh<_i12.ForgotPasswordRepo>(),
        gh<_i8.AuthRepo>(),
      ));
  gh.factory<_i39.HomeCubit>(() => _i39.HomeCubit(gh<_i15.HomeRepo>()));
  gh.factory<_i40.NotificationsCubit>(
      () => _i40.NotificationsCubit(gh<_i19.NotificationsRepo>()));
  gh.factory<_i41.ProfileBloc>(() => _i41.ProfileBloc(
        gh<_i22.ProfileRepo>(),
        gh<_i8.AuthRepo>(),
      ));
  gh.factory<_i42.RequestLogCubit>(
      () => _i42.RequestLogCubit(gh<_i25.RequestLogRepo>()));
  gh.factory<_i43.SplashUseCase>(
      () => _i43.SplashUseCase(gh<_i36.BaseSplashRepo>()));
  gh.factory<_i44.SplashCubit>(
      () => _i44.SplashCubit(gh<_i43.SplashUseCase>()));
  return getIt;
}

class _$InjectionModule extends _i45.InjectionModule {}
