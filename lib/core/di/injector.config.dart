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
import 'package:shared_preferences/shared_preferences.dart' as _i25;

import '../../src/about_caf/presentation/bloc/about_caf_bloc.dart' as _i28;
import '../../src/auth/data/data_sources/auth_datasource.dart' as _i3;
import '../../src/auth/data/data_sources/forgot_password_datasource.dart'
    as _i8;
import '../../src/auth/data/repositories/auth_repo_imp.dart' as _i6;
import '../../src/auth/data/repositories/forgot_password_repo.dart' as _i10;
import '../../src/auth/domain/repositories/auth_repo.dart' as _i5;
import '../../src/auth/domain/repositories/forgot_password_repo.dart' as _i9;
import '../../src/auth/presentation/bloc/auth_bloc.dart' as _i29;
import '../../src/auth/presentation/bloc/forgot_password_bloc.dart' as _i42;
import '../../src/campaign_terms/presentation/bloc/campaign_terms_bloc.dart'
    as _i40;
import '../../src/course%20_details/data/data_sources/course_details_datasource.dart'
    as _i7;
import '../../src/course%20_details/data/repositories/course_details_repo.dart'
    as _i31;
import '../../src/course%20_details/domin/repositories/base_course_details_repo.dart'
    as _i30;
import '../../src/course%20_details/presentaion/bloc/course_details_bloc.dart'
    as _i41;
import '../../src/hajj_transportation/presentation/bloc/hajj_transportation_bloc.dart'
    as _i43;
import '../../src/home/data/data_sources/home_datasource.dart' as _i11;
import '../../src/home/data/repositories/home_repo.dart' as _i33;
import '../../src/home/domain/repositories/base_home_repo.dart' as _i32;
import '../../src/home/domain/use_cases/home_usecase.dart' as _i45;
import '../../src/home/presentation/bloc/home_bloc.dart' as _i44;
import '../../src/live_broadcast/presentation/bloc/live_broadcast_bloc.dart'
    as _i46;
import '../../src/my_courses/data/data_sources/my_courses_datasource.dart'
    as _i13;
import '../../src/my_courses/data/repositories/my_courses_repo_imp.dart'
    as _i15;
import '../../src/my_courses/domain/repositories/my_courses_repo.dart' as _i14;
import '../../src/my_courses/presentation/bloc/my_courses_bloc.dart' as _i47;
import '../../src/nav_bar/presentation/bloc/nav_bar_bloc.dart' as _i16;
import '../../src/notes/presentation/bloc/notes_bloc.dart' as _i48;
import '../../src/notifications/data/data_sources/notifications_datasource.dart'
    as _i17;
import '../../src/notifications/data/repositories/notifications_repo_imp.dart'
    as _i19;
import '../../src/notifications/domain/repositories/notifications_repo.dart'
    as _i18;
import '../../src/notifications/presentation/bloc/notification_bloc.dart'
    as _i49;
import '../../src/photo_gallery/presentation/bloc/photo_gallery_bloc.dart'
    as _i50;
import '../../src/profile/data/data_sources/profile_datasource.dart' as _i20;
import '../../src/profile/data/repositories/profile_repo_imp.dart' as _i22;
import '../../src/profile/domain/repositories/profile_repo.dart' as _i21;
import '../../src/profile/presentation/bloc/profile_bloc.dart' as _i51;
import '../../src/program/presentation/bloc/programe_bloc.dart' as _i23;
import '../../src/settings/data/data_sources/settings_datasource.dart' as _i24;
import '../../src/settings/data/repositories/settings_repo.dart' as _i35;
import '../../src/settings/domain/repositories/base_settings_repo.dart' as _i34;
import '../../src/settings/domain/use_cases/settings_usecase.dart' as _i52;
import '../../src/settings/presentation/bloc/about_logeste_bloc.dart' as _i56;
import '../../src/settings/presentation/bloc/language_bloc.dart' as _i12;
import '../../src/settings/presentation/support/bloc/support_bloc.dart' as _i54;
import '../../src/splash/data/data_sources/splash_datasource.dart' as _i26;
import '../../src/splash/data/repositories/splash_repo.dart' as _i37;
import '../../src/splash/domain/repositories/base_splash_repo.dart' as _i36;
import '../../src/splash/domain/use_cases/splash_usecase.dart' as _i53;
import '../../src/splash/presentation/bloc/splash_bloc.dart' as _i57;
import '../../src/teachers/data/data_sources/teacher_datasource.dart' as _i27;
import '../../src/teachers/data/repositories/teacher_repo.dart' as _i39;
import '../../src/teachers/domin/repositories/base_teacher_repo.dart' as _i38;
import '../../src/teachers/presentation/bloc/teacher_bloc.dart' as _i55;
import 'injection_module.dart' as _i58;

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
  gh.factory<_i12.LanguageCubit>(() => _i12.LanguageCubit());
  gh.factory<_i13.MyCoursesDatasource>(
      () => _i13.MyCoursesDatasource(gh<_i4.Dio>()));
  gh.factory<_i14.MyCoursesRepo>(
      () => _i15.MyCoursesRepoImp(gh<_i13.MyCoursesDatasource>()));
  gh.factory<_i16.NavBarState>(() => _i16.NavBarState());
  gh.factory<_i17.NotificationsDatasource>(
      () => _i17.NotificationsDatasource(gh<_i4.Dio>()));
  gh.factory<_i18.NotificationsRepo>(
      () => _i19.NotificationsRepoImp(gh<_i17.NotificationsDatasource>()));
  gh.factory<_i20.ProfileDataSource>(
      () => _i20.ProfileDataSource(gh<_i4.Dio>()));
  gh.factory<_i21.ProfileRepo>(
      () => _i22.ProfileRepoImp(gh<_i20.ProfileDataSource>()));
  gh.factory<_i23.ProgrameBloc>(
      () => _i23.ProgrameBloc(gh<_i21.ProfileRepo>()));
  gh.factory<_i24.SettingsDatasource>(
      () => _i24.SettingsDatasource(gh<_i4.Dio>()));
  await gh.factoryAsync<_i25.SharedPreferences>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i26.SplashDatasource>(() => _i26.SplashDatasource(gh<_i4.Dio>()));
  gh.factory<_i27.TeacherDatasource>(
      () => _i27.TeacherDatasource(gh<_i4.Dio>()));
  gh.factory<_i28.AboutCafBloc>(
      () => _i28.AboutCafBloc(gh<_i21.ProfileRepo>()));
  gh.factory<_i29.AuthCubit>(() => _i29.AuthCubit(gh<_i5.AuthRepo>()));
  gh.factory<_i30.BaseCourseDetailsRepo>(
      () => _i31.CourseDetailsRepo(gh<_i7.CourseDetailsDatasource>()));
  gh.factory<_i32.BaseHomeRepo>(() => _i33.HomeRepo(gh<_i11.HomeDatasource>()));
  gh.factory<_i34.BaseSettingsRepo>(
      () => _i35.SettingsRepo(gh<_i24.SettingsDatasource>()));
  gh.factory<_i36.BaseSplashRepo>(
      () => _i37.SplashRepo(gh<_i26.SplashDatasource>()));
  gh.factory<_i38.BaseTeacherRepo>(
      () => _i39.TeacherRepo(gh<_i27.TeacherDatasource>()));
  gh.factory<_i40.CampaignTermsBloc>(
      () => _i40.CampaignTermsBloc(gh<_i21.ProfileRepo>()));
  gh.factory<_i41.CourseDetailsCubit>(
      () => _i41.CourseDetailsCubit(gh<_i30.BaseCourseDetailsRepo>()));
  gh.factory<_i42.ForgotPasswordCubit>(
      () => _i42.ForgotPasswordCubit(gh<_i9.ForgotPasswordRepo>()));
  gh.factory<_i43.HajjTransportationBloc>(
      () => _i43.HajjTransportationBloc(gh<_i21.ProfileRepo>()));
  gh.factory<_i44.HomeCubit>(() => _i44.HomeCubit(gh<_i32.BaseHomeRepo>()));
  gh.factory<_i45.HomeUseCase>(() => _i45.HomeUseCase(gh<_i32.BaseHomeRepo>()));
  gh.factory<_i46.LiveBroadcastBloc>(
      () => _i46.LiveBroadcastBloc(gh<_i21.ProfileRepo>()));
  gh.factory<_i47.MyCoursesCubit>(
      () => _i47.MyCoursesCubit(gh<_i14.MyCoursesRepo>()));
  gh.factory<_i48.NoteBloc>(() => _i48.NoteBloc(gh<_i21.ProfileRepo>()));
  gh.factory<_i49.NotificationsCubit>(
      () => _i49.NotificationsCubit(gh<_i18.NotificationsRepo>()));
  gh.factory<_i50.PhotoGalleryBloc>(
      () => _i50.PhotoGalleryBloc(gh<_i21.ProfileRepo>()));
  gh.factory<_i51.ProfileBloc>(() => _i51.ProfileBloc(gh<_i21.ProfileRepo>()));
  gh.factory<_i52.SettingsUseCase>(
      () => _i52.SettingsUseCase(gh<_i34.BaseSettingsRepo>()));
  gh.factory<_i53.SplashUseCase>(
      () => _i53.SplashUseCase(gh<_i36.BaseSplashRepo>()));
  gh.factory<_i54.SupportCubit>(
      () => _i54.SupportCubit(gh<_i52.SettingsUseCase>()));
  gh.factory<_i55.TeacherCubit>(
      () => _i55.TeacherCubit(gh<_i38.BaseTeacherRepo>()));
  gh.factory<_i56.AboutLogesteCubit>(
      () => _i56.AboutLogesteCubit(gh<_i52.SettingsUseCase>()));
  gh.factory<_i57.SplashCubit>(
      () => _i57.SplashCubit(gh<_i53.SplashUseCase>()));
  return getIt;
}

class _$InjectionModule extends _i58.InjectionModule {}
