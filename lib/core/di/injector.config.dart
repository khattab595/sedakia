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
import 'package:shared_preferences/shared_preferences.dart' as _i29;

import '../../src/attendance_record/data/data_sources/attendance_record_datasource.dart'
    as _i3;
import '../../src/attendance_record/data/repositories/attendance_record_repo_imp.dart'
    as _i6;
import '../../src/attendance_record/domin/repositories/attendance_record_repo.dart'
    as _i5;
import '../../src/attendance_record/presentation/bloc/attendance_record_bloc.dart'
    as _i33;
import '../../src/auth/data/data_sources/auth_datasource.dart' as _i7;
import '../../src/auth/data/data_sources/forgot_password_datasource.dart'
    as _i10;
import '../../src/auth/data/repositories/auth_repo_imp.dart' as _i9;
import '../../src/auth/data/repositories/forgot_password_repo_imp.dart' as _i12;
import '../../src/auth/domain/repositories/auth_repo.dart' as _i8;
import '../../src/auth/domain/repositories/forgot_password_repo.dart' as _i11;
import '../../src/auth/presentation/bloc/auth_bloc.dart' as _i34;
import '../../src/auth/presentation/bloc/forgot_password_bloc.dart' as _i37;
import '../../src/home/data/data_sources/home_datasource.dart' as _i13;
import '../../src/home/data/repositories/home_repo_imp.dart' as _i15;
import '../../src/home/domain/repositories/home_repo.dart' as _i14;
import '../../src/home/presentation/bloc/home_bloc.dart' as _i38;
import '../../src/nav_bar/presentation/bloc/nav_bar_bloc.dart' as _i16;
import '../../src/notifications/data/data_sources/notifications_datasource.dart'
    as _i17;
import '../../src/notifications/data/repositories/notifications_repo_imp.dart'
    as _i19;
import '../../src/notifications/domain/repositories/notifications_repo.dart'
    as _i18;
import '../../src/notifications/presentation/bloc/notification_bloc.dart'
    as _i39;
import '../../src/profile/data/data_sources/profile_datasource.dart' as _i20;
import '../../src/profile/data/repositories/profile_repo_imp.dart' as _i22;
import '../../src/profile/domain/repositories/profile_repo.dart' as _i21;
import '../../src/profile/presentation/bloc/profile_bloc.dart' as _i40;
import '../../src/request_log/data/data_sources/request_log_datasource.dart'
    as _i23;
import '../../src/request_log/data/repositories/request_log_repo_imp.dart'
    as _i25;
import '../../src/request_log/domain/repositories/request_log_repo.dart'
    as _i24;
import '../../src/request_log/presentation/add_request/bloc/add_request_bloc.dart'
    as _i32;
import '../../src/request_log/presentation/view/bloc/request_log_bloc.dart'
    as _i41;
import '../../src/settings/data/data_sources/settings_datasource.dart' as _i26;
import '../../src/settings/data/repositories/settings_repo_imp.dart' as _i28;
import '../../src/settings/domain/repositories/settings_repo.dart' as _i27;
import '../../src/settings/presentation/bloc/about_logeste_bloc.dart' as _i31;
import '../../src/splash/data/data_sources/splash_datasource.dart' as _i30;
import '../../src/splash/data/repositories/splash_repo.dart' as _i36;
import '../../src/splash/domain/repositories/base_splash_repo.dart' as _i35;
import '../../src/splash/domain/use_cases/splash_usecase.dart' as _i42;
import '../../src/splash/presentation/bloc/splash_bloc.dart' as _i43;
import 'injection_module.dart' as _i44;

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
  gh.factory<_i10.ForgotPasswordDataSource>(
      () => _i10.ForgotPasswordDataSource(gh<_i4.Dio>()));
  gh.factory<_i11.ForgotPasswordRepo>(
      () => _i12.ForgotPasswordRepoImp(gh<_i10.ForgotPasswordDataSource>()));
  gh.factory<_i13.HomeDatasource>(() => _i13.HomeDatasource(gh<_i4.Dio>()));
  gh.factory<_i14.HomeRepo>(() => _i15.HomeRepoImp(gh<_i13.HomeDatasource>()));
  gh.factory<_i16.NavBarState>(() => _i16.NavBarState());
  gh.factory<_i17.NotificationsDatasource>(
      () => _i17.NotificationsDatasource(gh<_i4.Dio>()));
  gh.factory<_i18.NotificationsRepo>(
      () => _i19.NotificationsRepoImp(gh<_i17.NotificationsDatasource>()));
  gh.factory<_i20.ProfileDataSource>(
      () => _i20.ProfileDataSource(gh<_i4.Dio>()));
  gh.factory<_i21.ProfileRepo>(
      () => _i22.ProfileRepoImp(gh<_i20.ProfileDataSource>()));
  gh.factory<_i23.RequestLogDatasource>(
      () => _i23.RequestLogDatasource(gh<_i4.Dio>()));
  gh.factory<_i24.RequestLogRepo>(
      () => _i25.RequestLogImp(gh<_i23.RequestLogDatasource>()));
  gh.factory<_i26.SettingsDatasource>(
      () => _i26.SettingsDatasource(gh<_i4.Dio>()));
  gh.factory<_i27.SettingsRepo>(
      () => _i28.SettingsRepoImp(gh<_i26.SettingsDatasource>()));
  await gh.factoryAsync<_i29.SharedPreferences>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i30.SplashDatasource>(() => _i30.SplashDatasource(gh<_i4.Dio>()));
  gh.factory<_i31.AboutCubit>(() => _i31.AboutCubit(gh<_i27.SettingsRepo>()));
  gh.factory<_i32.AddRequestCubit>(
      () => _i32.AddRequestCubit(gh<_i24.RequestLogRepo>()));
  gh.factory<_i33.AttendanceRecordCubit>(
      () => _i33.AttendanceRecordCubit(gh<_i5.AttendanceRecordRepo>()));
  gh.factory<_i34.AuthCubit>(() => _i34.AuthCubit(gh<_i8.AuthRepo>()));
  gh.factory<_i35.BaseSplashRepo>(
      () => _i36.SplashRepo(gh<_i30.SplashDatasource>()));
  gh.factory<_i37.ForgotPasswordCubit>(() => _i37.ForgotPasswordCubit(
        gh<_i11.ForgotPasswordRepo>(),
        gh<_i8.AuthRepo>(),
      ));
  gh.factory<_i38.HomeCubit>(() => _i38.HomeCubit(gh<_i14.HomeRepo>()));
  gh.factory<_i39.NotificationsCubit>(
      () => _i39.NotificationsCubit(gh<_i18.NotificationsRepo>()));
  gh.factory<_i40.ProfileBloc>(() => _i40.ProfileBloc(
        gh<_i21.ProfileRepo>(),
        gh<_i8.AuthRepo>(),
        gh<_i11.ForgotPasswordRepo>(),
      ));
  gh.factory<_i41.RequestLogCubit>(
      () => _i41.RequestLogCubit(gh<_i24.RequestLogRepo>()));
  gh.factory<_i42.SplashUseCase>(
      () => _i42.SplashUseCase(gh<_i35.BaseSplashRepo>()));
  gh.factory<_i43.SplashCubit>(
      () => _i43.SplashCubit(gh<_i42.SplashUseCase>()));
  return getIt;
}

class _$InjectionModule extends _i44.InjectionModule {}
