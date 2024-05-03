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
import 'package:shared_preferences/shared_preferences.dart' as _i32;

import '../../src/about_caf/presentation/bloc/about_caf_bloc.dart' as _i35;
import '../../src/auth/data/data_sources/auth_datasource.dart' as _i3;
import '../../src/auth/data/data_sources/forgot_password_datasource.dart'
    as _i12;
import '../../src/auth/data/repositories/auth_repo_imp.dart' as _i6;
import '../../src/auth/data/repositories/forgot_password_repo.dart' as _i14;
import '../../src/auth/domain/repositories/auth_repo.dart' as _i5;
import '../../src/auth/domain/repositories/forgot_password_repo.dart' as _i13;
import '../../src/auth/presentation/bloc/auth_bloc.dart' as _i37;
import '../../src/auth/presentation/bloc/forgot_password_bloc.dart' as _i47;
import '../../src/auth/presentation/register/bloc/complete_register_bloc.dart'
    as _i7;
import '../../src/campaign_terms/presentation/bloc/campaign_terms_bloc.dart'
    as _i45;
import '../../src/course%20_details/data/data_sources/course_details_datasource.dart'
    as _i8;
import '../../src/course%20_details/data/repositories/course_details_repo.dart'
    as _i39;
import '../../src/course%20_details/domin/repositories/base_course_details_repo.dart'
    as _i38;
import '../../src/course%20_details/presentaion/bloc/course_details_bloc.dart'
    as _i46;
import '../../src/department/data/data_sources/department_datasource.dart'
    as _i11;
import '../../src/department/data/repositories/course_details_repo.dart'
    as _i10;
import '../../src/department/domin/repositories/base_department_repo.dart'
    as _i40;
import '../../src/department/presentation/bloc/department_bloc.dart' as _i9;
import '../../src/hajj_transportation/presentation/bloc/hajj_transportation_bloc.dart'
    as _i48;
import '../../src/home/data/data_sources/home_datasource.dart' as _i15;
import '../../src/home/data/repositories/home_repo_imp.dart' as _i17;
import '../../src/home/domain/repositories/home_repo.dart' as _i16;
import '../../src/home/presentation/bloc/home_bloc.dart' as _i49;
import '../../src/live_broadcast/presentation/bloc/live_broadcast_bloc.dart'
    as _i50;
import '../../src/my_courses/data/data_sources/my_courses_datasource.dart'
    as _i18;
import '../../src/my_courses/data/repositories/my_courses_repo_imp.dart'
    as _i20;
import '../../src/my_courses/domain/repositories/my_courses_repo.dart' as _i19;
import '../../src/my_courses/presentation/bloc/my_courses_bloc.dart' as _i51;
import '../../src/nav_bar/presentation/bloc/nav_bar_bloc.dart' as _i21;
import '../../src/notes/presentation/bloc/notes_bloc.dart' as _i52;
import '../../src/notifications/data/data_sources/notifications_datasource.dart'
    as _i22;
import '../../src/notifications/data/repositories/notifications_repo_imp.dart'
    as _i24;
import '../../src/notifications/domain/repositories/notifications_repo.dart'
    as _i23;
import '../../src/notifications/presentation/bloc/notification_bloc.dart'
    as _i53;
import '../../src/photo_gallery/presentation/bloc/photo_gallery_bloc.dart'
    as _i54;
import '../../src/profile/data/data_sources/profile_datasource.dart' as _i25;
import '../../src/profile/data/repositories/profile_repo_imp.dart' as _i27;
import '../../src/profile/domain/repositories/profile_repo.dart' as _i26;
import '../../src/profile/presentation/bloc/profile_bloc.dart' as _i55;
import '../../src/program/presentation/bloc/programe_bloc.dart' as _i28;
import '../../src/settings/data/data_sources/settings_datasource.dart' as _i29;
import '../../src/settings/data/repositories/settings_repo_imp.dart' as _i31;
import '../../src/settings/domain/repositories/settings_repo.dart' as _i30;
import '../../src/settings/presentation/bloc/about_logeste_bloc.dart' as _i36;
import '../../src/splash/data/data_sources/splash_datasource.dart' as _i33;
import '../../src/splash/data/repositories/splash_repo.dart' as _i42;
import '../../src/splash/domain/repositories/base_splash_repo.dart' as _i41;
import '../../src/splash/domain/use_cases/splash_usecase.dart' as _i56;
import '../../src/splash/presentation/bloc/splash_bloc.dart' as _i58;
import '../../src/teachers/data/data_sources/teacher_datasource.dart' as _i34;
import '../../src/teachers/data/repositories/teacher_repo.dart' as _i44;
import '../../src/teachers/domin/repositories/base_teacher_repo.dart' as _i43;
import '../../src/teachers/presentation/bloc/teacher_bloc.dart' as _i57;
import 'injection_module.dart' as _i59;

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
  gh.factory<_i7.CompleteRegisterCubit>(
      () => _i7.CompleteRegisterCubit(gh<_i5.AuthRepo>()));
  gh.factory<_i8.CourseDetailsDatasource>(
      () => _i8.CourseDetailsDatasource(gh<_i4.Dio>()));
  gh.factory<_i9.DepartmentCubit>(
      () => _i9.DepartmentCubit(gh<_i10.DepartmentRepo>()));
  gh.factory<_i11.DepartmentDatasource>(
      () => _i11.DepartmentDatasource(gh<_i4.Dio>()));
  gh.factory<_i12.ForgotPasswordDataSource>(
      () => _i12.ForgotPasswordDataSource(gh<_i4.Dio>()));
  gh.factory<_i13.ForgotPasswordRepo>(
      () => _i14.ForgotPasswordRepoImp(gh<_i12.ForgotPasswordDataSource>()));
  gh.factory<_i15.HomeDatasource>(() => _i15.HomeDatasource(gh<_i4.Dio>()));
  gh.factory<_i16.HomeRepo>(() => _i17.HomeRepoImp(gh<_i15.HomeDatasource>()));
  gh.factory<_i18.MyCoursesDatasource>(
      () => _i18.MyCoursesDatasource(gh<_i4.Dio>()));
  gh.factory<_i19.MyCoursesRepo>(
      () => _i20.MyCoursesRepoImp(gh<_i18.MyCoursesDatasource>()));
  gh.factory<_i21.NavBarState>(() => _i21.NavBarState());
  gh.factory<_i22.NotificationsDatasource>(
      () => _i22.NotificationsDatasource(gh<_i4.Dio>()));
  gh.factory<_i23.NotificationsRepo>(
      () => _i24.NotificationsRepoImp(gh<_i22.NotificationsDatasource>()));
  gh.factory<_i25.ProfileDataSource>(
      () => _i25.ProfileDataSource(gh<_i4.Dio>()));
  gh.factory<_i26.ProfileRepo>(
      () => _i27.ProfileRepoImp(gh<_i25.ProfileDataSource>()));
  gh.factory<_i28.ProgrameBloc>(
      () => _i28.ProgrameBloc(gh<_i26.ProfileRepo>()));
  gh.factory<_i29.SettingsDatasource>(
      () => _i29.SettingsDatasource(gh<_i4.Dio>()));
  gh.factory<_i30.SettingsRepo>(
      () => _i31.SettingsRepoImp(gh<_i29.SettingsDatasource>()));
  await gh.factoryAsync<_i32.SharedPreferences>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i33.SplashDatasource>(() => _i33.SplashDatasource(gh<_i4.Dio>()));
  gh.factory<_i34.TeacherDatasource>(
      () => _i34.TeacherDatasource(gh<_i4.Dio>()));
  gh.factory<_i35.AboutCafBloc>(
      () => _i35.AboutCafBloc(gh<_i26.ProfileRepo>()));
  gh.factory<_i36.AboutCubit>(() => _i36.AboutCubit(gh<_i30.SettingsRepo>()));
  gh.factory<_i37.AuthCubit>(() => _i37.AuthCubit(gh<_i5.AuthRepo>()));
  gh.factory<_i38.BaseCourseDetailsRepo>(
      () => _i39.CourseDetailsRepo(gh<_i8.CourseDetailsDatasource>()));
  gh.factory<_i40.BaseDepartmentRepo>(
      () => _i10.DepartmentRepo(gh<_i11.DepartmentDatasource>()));
  gh.factory<_i41.BaseSplashRepo>(
      () => _i42.SplashRepo(gh<_i33.SplashDatasource>()));
  gh.factory<_i43.BaseTeacherRepo>(
      () => _i44.TeacherRepo(gh<_i34.TeacherDatasource>()));
  gh.factory<_i45.CampaignTermsBloc>(
      () => _i45.CampaignTermsBloc(gh<_i26.ProfileRepo>()));
  gh.factory<_i46.CourseDetailsCubit>(
      () => _i46.CourseDetailsCubit(gh<_i38.BaseCourseDetailsRepo>()));
  gh.factory<_i47.ForgotPasswordCubit>(
      () => _i47.ForgotPasswordCubit(gh<_i13.ForgotPasswordRepo>()));
  gh.factory<_i48.HajjTransportationBloc>(
      () => _i48.HajjTransportationBloc(gh<_i26.ProfileRepo>()));
  gh.factory<_i49.HomeCubit>(() => _i49.HomeCubit(gh<_i16.HomeRepo>()));
  gh.factory<_i50.LiveBroadcastBloc>(
      () => _i50.LiveBroadcastBloc(gh<_i26.ProfileRepo>()));
  gh.factory<_i51.MyCoursesCubit>(
      () => _i51.MyCoursesCubit(gh<_i19.MyCoursesRepo>()));
  gh.factory<_i52.NoteBloc>(() => _i52.NoteBloc(gh<_i26.ProfileRepo>()));
  gh.factory<_i53.NotificationsCubit>(
      () => _i53.NotificationsCubit(gh<_i23.NotificationsRepo>()));
  gh.factory<_i54.PhotoGalleryBloc>(
      () => _i54.PhotoGalleryBloc(gh<_i26.ProfileRepo>()));
  gh.factory<_i55.ProfileBloc>(() => _i55.ProfileBloc(gh<_i26.ProfileRepo>()));
  gh.factory<_i56.SplashUseCase>(
      () => _i56.SplashUseCase(gh<_i41.BaseSplashRepo>()));
  gh.factory<_i57.TeacherCubit>(
      () => _i57.TeacherCubit(gh<_i43.BaseTeacherRepo>()));
  gh.factory<_i58.SplashCubit>(
      () => _i58.SplashCubit(gh<_i56.SplashUseCase>()));
  return getIt;
}

class _$InjectionModule extends _i59.InjectionModule {}
