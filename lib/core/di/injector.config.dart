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
import 'package:shared_preferences/shared_preferences.dart' as _i35;

import '../../src/about_caf/presentation/bloc/about_caf_bloc.dart' as _i38;
import '../../src/auth/data/data_sources/auth_datasource.dart' as _i3;
import '../../src/auth/data/data_sources/forgot_password_datasource.dart'
    as _i15;
import '../../src/auth/data/repositories/auth_repo_imp.dart' as _i6;
import '../../src/auth/data/repositories/forgot_password_repo_imp.dart' as _i17;
import '../../src/auth/domain/repositories/auth_repo.dart' as _i5;
import '../../src/auth/domain/repositories/forgot_password_repo.dart' as _i16;
import '../../src/auth/presentation/bloc/auth_bloc.dart' as _i40;
import '../../src/auth/presentation/bloc/forgot_password_bloc.dart' as _i51;
import '../../src/auth/presentation/register/bloc/complete_register_bloc.dart'
    as _i7;
import '../../src/campaign_terms/presentation/bloc/campaign_terms_bloc.dart'
    as _i48;
import '../../src/course%20_details/data/data_sources/course_details_datasource.dart'
    as _i8;
import '../../src/course%20_details/data/repositories/course_details_repo.dart'
    as _i42;
import '../../src/course%20_details/domin/repositories/base_course_details_repo.dart'
    as _i41;
import '../../src/course%20_details/presentaion/bloc/course_details_bloc.dart'
    as _i49;
import '../../src/department/data/data_sources/department_datasource.dart'
    as _i11;
import '../../src/department/data/repositories/course_details_repo.dart'
    as _i10;
import '../../src/department/domin/repositories/base_department_repo.dart'
    as _i43;
import '../../src/department/presentation/bloc/department_bloc.dart' as _i9;
import '../../src/favorite/data/data_sources/favorite_datasource.dart' as _i12;
import '../../src/favorite/data/repositories/favorite_repo_imp.dart' as _i14;
import '../../src/favorite/domin/repositories/favorite_repo.dart' as _i13;
import '../../src/favorite/presentation/bloc/favorite_bloc.dart' as _i50;
import '../../src/hajj_transportation/presentation/bloc/hajj_transportation_bloc.dart'
    as _i52;
import '../../src/home/data/data_sources/home_datasource.dart' as _i18;
import '../../src/home/data/repositories/home_repo_imp.dart' as _i20;
import '../../src/home/domain/repositories/home_repo.dart' as _i19;
import '../../src/home/presentation/bloc/home_bloc.dart' as _i53;
import '../../src/live_broadcast/presentation/bloc/live_broadcast_bloc.dart'
    as _i54;
import '../../src/my_courses/data/data_sources/my_courses_datasource.dart'
    as _i21;
import '../../src/my_courses/data/repositories/my_courses_repo_imp.dart'
    as _i23;
import '../../src/my_courses/domain/repositories/my_courses_repo.dart' as _i22;
import '../../src/my_courses/presentation/bloc/my_courses_bloc.dart' as _i55;
import '../../src/nav_bar/presentation/bloc/nav_bar_bloc.dart' as _i24;
import '../../src/notes/presentation/bloc/notes_bloc.dart' as _i56;
import '../../src/notifications/data/data_sources/notifications_datasource.dart'
    as _i25;
import '../../src/notifications/data/repositories/notifications_repo_imp.dart'
    as _i27;
import '../../src/notifications/domain/repositories/notifications_repo.dart'
    as _i26;
import '../../src/notifications/presentation/bloc/notification_bloc.dart'
    as _i57;
import '../../src/photo_gallery/presentation/bloc/photo_gallery_bloc.dart'
    as _i58;
import '../../src/profile/data/data_sources/profile_datasource.dart' as _i28;
import '../../src/profile/data/repositories/profile_repo_imp.dart' as _i30;
import '../../src/profile/domain/repositories/profile_repo.dart' as _i29;
import '../../src/profile/presentation/bloc/profile_bloc.dart' as _i59;
import '../../src/program/presentation/bloc/programe_bloc.dart' as _i31;
import '../../src/settings/data/data_sources/settings_datasource.dart' as _i32;
import '../../src/settings/data/repositories/settings_repo_imp.dart' as _i34;
import '../../src/settings/domain/repositories/settings_repo.dart' as _i33;
import '../../src/settings/presentation/bloc/about_logeste_bloc.dart' as _i39;
import '../../src/splash/data/data_sources/splash_datasource.dart' as _i36;
import '../../src/splash/data/repositories/splash_repo.dart' as _i45;
import '../../src/splash/domain/repositories/base_splash_repo.dart' as _i44;
import '../../src/splash/domain/use_cases/splash_usecase.dart' as _i60;
import '../../src/splash/presentation/bloc/splash_bloc.dart' as _i62;
import '../../src/teachers/data/data_sources/teacher_datasource.dart' as _i37;
import '../../src/teachers/data/repositories/teacher_repo.dart' as _i47;
import '../../src/teachers/domin/repositories/base_teacher_repo.dart' as _i46;
import '../../src/teachers/presentation/bloc/teacher_bloc.dart' as _i61;
import 'injection_module.dart' as _i63;

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
  gh.factory<_i12.FavoriteDatasource>(
      () => _i12.FavoriteDatasource(gh<_i4.Dio>()));
  gh.factory<_i13.FavoriteRepo>(
      () => _i14.FavoriteRepoImp(gh<_i12.FavoriteDatasource>()));
  gh.factory<_i15.ForgotPasswordDataSource>(
      () => _i15.ForgotPasswordDataSource(gh<_i4.Dio>()));
  gh.factory<_i16.ForgotPasswordRepo>(
      () => _i17.ForgotPasswordRepoImp(gh<_i15.ForgotPasswordDataSource>()));
  gh.factory<_i18.HomeDatasource>(() => _i18.HomeDatasource(gh<_i4.Dio>()));
  gh.factory<_i19.HomeRepo>(() => _i20.HomeRepoImp(gh<_i18.HomeDatasource>()));
  gh.factory<_i21.MyCoursesDatasource>(
      () => _i21.MyCoursesDatasource(gh<_i4.Dio>()));
  gh.factory<_i22.MyCoursesRepo>(
      () => _i23.MyCoursesRepoImp(gh<_i21.MyCoursesDatasource>()));
  gh.factory<_i24.NavBarState>(() => _i24.NavBarState());
  gh.factory<_i25.NotificationsDatasource>(
      () => _i25.NotificationsDatasource(gh<_i4.Dio>()));
  gh.factory<_i26.NotificationsRepo>(
      () => _i27.NotificationsRepoImp(gh<_i25.NotificationsDatasource>()));
  gh.factory<_i28.ProfileDataSource>(
      () => _i28.ProfileDataSource(gh<_i4.Dio>()));
  gh.factory<_i29.ProfileRepo>(
      () => _i30.ProfileRepoImp(gh<_i28.ProfileDataSource>()));
  gh.factory<_i31.ProgrameBloc>(
      () => _i31.ProgrameBloc(gh<_i29.ProfileRepo>()));
  gh.factory<_i32.SettingsDatasource>(
      () => _i32.SettingsDatasource(gh<_i4.Dio>()));
  gh.factory<_i33.SettingsRepo>(
      () => _i34.SettingsRepoImp(gh<_i32.SettingsDatasource>()));
  await gh.factoryAsync<_i35.SharedPreferences>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i36.SplashDatasource>(() => _i36.SplashDatasource(gh<_i4.Dio>()));
  gh.factory<_i37.TeacherDatasource>(
      () => _i37.TeacherDatasource(gh<_i4.Dio>()));
  gh.factory<_i38.AboutCafBloc>(
      () => _i38.AboutCafBloc(gh<_i29.ProfileRepo>()));
  gh.factory<_i39.AboutCubit>(() => _i39.AboutCubit(gh<_i33.SettingsRepo>()));
  gh.factory<_i40.AuthCubit>(() => _i40.AuthCubit(gh<_i5.AuthRepo>()));
  gh.factory<_i41.BaseCourseDetailsRepo>(
      () => _i42.CourseDetailsRepo(gh<_i8.CourseDetailsDatasource>()));
  gh.factory<_i43.BaseDepartmentRepo>(
      () => _i10.DepartmentRepo(gh<_i11.DepartmentDatasource>()));
  gh.factory<_i44.BaseSplashRepo>(
      () => _i45.SplashRepo(gh<_i36.SplashDatasource>()));
  gh.factory<_i46.BaseTeacherRepo>(
      () => _i47.TeacherRepo(gh<_i37.TeacherDatasource>()));
  gh.factory<_i48.CampaignTermsBloc>(
      () => _i48.CampaignTermsBloc(gh<_i29.ProfileRepo>()));
  gh.factory<_i49.CourseDetailsCubit>(
      () => _i49.CourseDetailsCubit(gh<_i41.BaseCourseDetailsRepo>()));
  gh.factory<_i50.FavoriteCubit>(
      () => _i50.FavoriteCubit(gh<_i13.FavoriteRepo>()));
  gh.factory<_i51.ForgotPasswordCubit>(() => _i51.ForgotPasswordCubit(
        gh<_i16.ForgotPasswordRepo>(),
        gh<_i5.AuthRepo>(),
      ));
  gh.factory<_i52.HajjTransportationBloc>(
      () => _i52.HajjTransportationBloc(gh<_i29.ProfileRepo>()));
  gh.factory<_i53.HomeCubit>(() => _i53.HomeCubit(gh<_i19.HomeRepo>()));
  gh.factory<_i54.LiveBroadcastBloc>(
      () => _i54.LiveBroadcastBloc(gh<_i29.ProfileRepo>()));
  gh.factory<_i55.MyCoursesCubit>(
      () => _i55.MyCoursesCubit(gh<_i22.MyCoursesRepo>()));
  gh.factory<_i56.NoteBloc>(() => _i56.NoteBloc(gh<_i29.ProfileRepo>()));
  gh.factory<_i57.NotificationsCubit>(
      () => _i57.NotificationsCubit(gh<_i26.NotificationsRepo>()));
  gh.factory<_i58.PhotoGalleryBloc>(
      () => _i58.PhotoGalleryBloc(gh<_i29.ProfileRepo>()));
  gh.factory<_i59.ProfileBloc>(() => _i59.ProfileBloc(
        gh<_i29.ProfileRepo>(),
        gh<_i5.AuthRepo>(),
      ));
  gh.factory<_i60.SplashUseCase>(
      () => _i60.SplashUseCase(gh<_i44.BaseSplashRepo>()));
  gh.factory<_i61.TeacherCubit>(
      () => _i61.TeacherCubit(gh<_i46.BaseTeacherRepo>()));
  gh.factory<_i62.SplashCubit>(
      () => _i62.SplashCubit(gh<_i60.SplashUseCase>()));
  return getIt;
}

class _$InjectionModule extends _i63.InjectionModule {}
