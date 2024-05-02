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
import 'package:shared_preferences/shared_preferences.dart' as _i27;

import '../../src/about_caf/presentation/bloc/about_caf_bloc.dart' as _i30;
import '../../src/auth/data/data_sources/auth_datasource.dart' as _i3;
import '../../src/auth/data/data_sources/forgot_password_datasource.dart'
    as _i8;
import '../../src/auth/data/repositories/auth_repo_imp.dart' as _i6;
import '../../src/auth/data/repositories/forgot_password_repo.dart' as _i10;
import '../../src/auth/domain/repositories/auth_repo.dart' as _i5;
import '../../src/auth/domain/repositories/forgot_password_repo.dart' as _i9;
import '../../src/auth/presentation/bloc/auth_bloc.dart' as _i31;
import '../../src/auth/presentation/bloc/forgot_password_bloc.dart' as _i42;
import '../../src/campaign_terms/presentation/bloc/campaign_terms_bloc.dart'
    as _i40;
import '../../src/course%20_details/data/data_sources/course_details_datasource.dart'
    as _i7;
import '../../src/course%20_details/data/repositories/course_details_repo.dart'
    as _i33;
import '../../src/course%20_details/domin/repositories/base_course_details_repo.dart'
    as _i32;
import '../../src/course%20_details/presentaion/bloc/course_details_bloc.dart'
    as _i41;
import '../../src/hajj_transportation/presentation/bloc/hajj_transportation_bloc.dart'
    as _i43;
import '../../src/home/data/data_sources/home_datasource.dart' as _i11;
import '../../src/home/data/repositories/home_repo_imp.dart' as _i13;
import '../../src/home/domain/repositories/home_repo.dart' as _i12;
import '../../src/home/presentation/bloc/home_bloc.dart' as _i44;
import '../../src/live_broadcast/presentation/bloc/live_broadcast_bloc.dart'
    as _i45;
import '../../src/my_courses/data/data_sources/my_courses_datasource.dart'
    as _i15;
import '../../src/my_courses/data/repositories/my_courses_repo_imp.dart'
    as _i17;
import '../../src/my_courses/domain/repositories/my_courses_repo.dart' as _i16;
import '../../src/my_courses/presentation/bloc/my_courses_bloc.dart' as _i46;
import '../../src/nav_bar/presentation/bloc/nav_bar_bloc.dart' as _i18;
import '../../src/notes/presentation/bloc/notes_bloc.dart' as _i47;
import '../../src/notifications/data/data_sources/notifications_datasource.dart'
    as _i19;
import '../../src/notifications/data/repositories/notifications_repo_imp.dart'
    as _i21;
import '../../src/notifications/domain/repositories/notifications_repo.dart'
    as _i20;
import '../../src/notifications/presentation/bloc/notification_bloc.dart'
    as _i48;
import '../../src/photo_gallery/presentation/bloc/photo_gallery_bloc.dart'
    as _i49;
import '../../src/profile/data/data_sources/profile_datasource.dart' as _i22;
import '../../src/profile/data/repositories/profile_repo_imp.dart' as _i24;
import '../../src/profile/domain/repositories/profile_repo.dart' as _i23;
import '../../src/profile/presentation/bloc/profile_bloc.dart' as _i50;
import '../../src/program/presentation/bloc/programe_bloc.dart' as _i25;
import '../../src/settings/data/data_sources/settings_datasource.dart' as _i26;
import '../../src/settings/data/repositories/settings_repo.dart' as _i35;
import '../../src/settings/domain/repositories/base_settings_repo.dart' as _i34;
import '../../src/settings/domain/use_cases/settings_usecase.dart' as _i51;
import '../../src/settings/presentation/bloc/about_logeste_bloc.dart' as _i55;
import '../../src/settings/presentation/bloc/language_bloc.dart' as _i14;
import '../../src/settings/presentation/support/bloc/support_bloc.dart' as _i53;
import '../../src/splash/data/data_sources/splash_datasource.dart' as _i28;
import '../../src/splash/data/repositories/splash_repo.dart' as _i37;
import '../../src/splash/domain/repositories/base_splash_repo.dart' as _i36;
import '../../src/splash/domain/use_cases/splash_usecase.dart' as _i52;
import '../../src/splash/presentation/bloc/splash_bloc.dart' as _i56;
import '../../src/teachers/data/data_sources/teacher_datasource.dart' as _i29;
import '../../src/teachers/data/repositories/teacher_repo.dart' as _i39;
import '../../src/teachers/domin/repositories/base_teacher_repo.dart' as _i38;
import '../../src/teachers/presentation/bloc/teacher_bloc.dart' as _i54;
import 'injection_module.dart' as _i57;

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
  gh.factory<_i7.CourseDetailsDatasource>(
      () => _i7.CourseDetailsDatasource(gh<_i4.Dio>()));
  gh.factory<_i8.ForgotPasswordDataSource>(
      () => _i8.ForgotPasswordDataSource(gh<_i4.Dio>()));
  gh.factory<_i9.ForgotPasswordRepo>(
      () => _i10.ForgotPasswordRepoImp(gh<_i8.ForgotPasswordDataSource>()));
  gh.factory<_i11.HomeDatasource>(() => _i11.HomeDatasource(gh<_i4.Dio>()));
  gh.factory<_i12.HomeRepo>(() => _i13.HomeRepoImp(gh<_i11.HomeDatasource>()));
  gh.factory<_i14.LanguageCubit>(() => _i14.LanguageCubit());
  gh.factory<_i15.MyCoursesDatasource>(
      () => _i15.MyCoursesDatasource(gh<_i4.Dio>()));
  gh.factory<_i16.MyCoursesRepo>(
      () => _i17.MyCoursesRepoImp(gh<_i15.MyCoursesDatasource>()));
  gh.factory<_i18.NavBarState>(() => _i18.NavBarState());
  gh.factory<_i19.NotificationsDatasource>(
      () => _i19.NotificationsDatasource(gh<_i4.Dio>()));
  gh.factory<_i20.NotificationsRepo>(
      () => _i21.NotificationsRepoImp(gh<_i19.NotificationsDatasource>()));
  gh.factory<_i22.ProfileDataSource>(
      () => _i22.ProfileDataSource(gh<_i4.Dio>()));
  gh.factory<_i23.ProfileRepo>(
      () => _i24.ProfileRepoImp(gh<_i22.ProfileDataSource>()));
  gh.factory<_i25.ProgrameBloc>(
      () => _i25.ProgrameBloc(gh<_i23.ProfileRepo>()));
  gh.factory<_i26.SettingsDatasource>(
      () => _i26.SettingsDatasource(gh<_i4.Dio>()));
  await gh.factoryAsync<_i27.SharedPreferences>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i28.SplashDatasource>(() => _i28.SplashDatasource(gh<_i4.Dio>()));
  gh.factory<_i29.TeacherDatasource>(
      () => _i29.TeacherDatasource(gh<_i4.Dio>()));
  gh.factory<_i30.AboutCafBloc>(
      () => _i30.AboutCafBloc(gh<_i23.ProfileRepo>()));
  gh.factory<_i31.AuthCubit>(() => _i31.AuthCubit(gh<_i5.AuthRepo>()));
  gh.factory<_i32.BaseCourseDetailsRepo>(
      () => _i33.CourseDetailsRepo(gh<_i7.CourseDetailsDatasource>()));
  gh.factory<_i34.BaseSettingsRepo>(
      () => _i35.SettingsRepo(gh<_i26.SettingsDatasource>()));
  gh.factory<_i36.BaseSplashRepo>(
      () => _i37.SplashRepo(gh<_i28.SplashDatasource>()));
  gh.factory<_i38.BaseTeacherRepo>(
      () => _i39.TeacherRepo(gh<_i29.TeacherDatasource>()));
  gh.factory<_i40.CampaignTermsBloc>(
      () => _i40.CampaignTermsBloc(gh<_i23.ProfileRepo>()));
  gh.factory<_i41.CourseDetailsCubit>(
      () => _i41.CourseDetailsCubit(gh<_i32.BaseCourseDetailsRepo>()));
  gh.factory<_i42.ForgotPasswordCubit>(
      () => _i42.ForgotPasswordCubit(gh<_i9.ForgotPasswordRepo>()));
  gh.factory<_i43.HajjTransportationBloc>(
      () => _i43.HajjTransportationBloc(gh<_i23.ProfileRepo>()));
  gh.factory<_i44.HomeCubit>(() => _i44.HomeCubit(gh<_i12.HomeRepo>()));
  gh.factory<_i45.LiveBroadcastBloc>(
      () => _i45.LiveBroadcastBloc(gh<_i23.ProfileRepo>()));
  gh.factory<_i46.MyCoursesCubit>(
      () => _i46.MyCoursesCubit(gh<_i16.MyCoursesRepo>()));
  gh.factory<_i47.NoteBloc>(() => _i47.NoteBloc(gh<_i23.ProfileRepo>()));
  gh.factory<_i48.NotificationsCubit>(
      () => _i48.NotificationsCubit(gh<_i20.NotificationsRepo>()));
  gh.factory<_i49.PhotoGalleryBloc>(
      () => _i49.PhotoGalleryBloc(gh<_i23.ProfileRepo>()));
  gh.factory<_i50.ProfileBloc>(() => _i50.ProfileBloc(gh<_i23.ProfileRepo>()));
  gh.factory<_i51.SettingsUseCase>(
      () => _i51.SettingsUseCase(gh<_i34.BaseSettingsRepo>()));
  gh.factory<_i52.SplashUseCase>(
      () => _i52.SplashUseCase(gh<_i36.BaseSplashRepo>()));
  gh.factory<_i53.SupportCubit>(
      () => _i53.SupportCubit(gh<_i51.SettingsUseCase>()));
  gh.factory<_i54.TeacherCubit>(
      () => _i54.TeacherCubit(gh<_i38.BaseTeacherRepo>()));
  gh.factory<_i55.AboutLogesteCubit>(
      () => _i55.AboutLogesteCubit(gh<_i51.SettingsUseCase>()));
  gh.factory<_i56.SplashCubit>(
      () => _i56.SplashCubit(gh<_i52.SplashUseCase>()));
  return getIt;
}

class _$InjectionModule extends _i57.InjectionModule {}
