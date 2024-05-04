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
import 'package:shared_preferences/shared_preferences.dart' as _i39;

import '../../src/auth/data/data_sources/auth_datasource.dart' as _i3;
import '../../src/auth/data/data_sources/forgot_password_datasource.dart'
    as _i18;
import '../../src/auth/data/repositories/auth_repo_imp.dart' as _i6;
import '../../src/auth/data/repositories/forgot_password_repo_imp.dart' as _i20;
import '../../src/auth/domain/repositories/auth_repo.dart' as _i5;
import '../../src/auth/domain/repositories/forgot_password_repo.dart' as _i19;
import '../../src/auth/presentation/bloc/auth_bloc.dart' as _i43;
import '../../src/auth/presentation/bloc/forgot_password_bloc.dart' as _i51;
import '../../src/auth/presentation/register/bloc/complete_register_bloc.dart'
    as _i7;
import '../../src/courses/data/data_sources/courses_datasource.dart' as _i8;
import '../../src/courses/data/repositories/courses_repo_imp.dart' as _i10;
import '../../src/courses/domain/repositories/courses_repo.dart' as _i9;
import '../../src/courses/presentation/bloc/my_courses_bloc.dart' as _i28;
import '../../src/courses/presentation/details/bloc/course_details_bloc.dart'
    as _i48;
import '../../src/courses/presentation/details/bloc/lesson_details_bloc.dart'
    as _i27;
import '../../src/courses/presentation/latest_courses/bloc/courses_bloc.dart'
    as _i49;
import '../../src/departments/data/data_sources/departments_datasource.dart'
    as _i13;
import '../../src/departments/data/repositories/departments_repo_imp.dart'
    as _i12;
import '../../src/departments/domin/repositories/departments_repo.dart' as _i14;
import '../../src/departments/presentation/bloc/department_bloc.dart' as _i11;
import '../../src/favorite/data/data_sources/favorite_datasource.dart' as _i15;
import '../../src/favorite/data/repositories/favorite_repo_imp.dart' as _i17;
import '../../src/favorite/domin/repositories/favorite_repo.dart' as _i16;
import '../../src/favorite/presentation/bloc/favorite_bloc.dart' as _i50;
import '../../src/grades/data/data_sources/grades_datasource.dart' as _i21;
import '../../src/grades/data/repositories/grades_repo_imp.dart' as _i23;
import '../../src/grades/domain/repositories/grades_repo.dart' as _i22;
import '../../src/grades/presentation/bloc/grades_bloc.dart' as _i52;
import '../../src/home/data/data_sources/home_datasource.dart' as _i24;
import '../../src/home/data/repositories/home_repo_imp.dart' as _i26;
import '../../src/home/domain/repositories/home_repo.dart' as _i25;
import '../../src/home/presentation/bloc/home_bloc.dart' as _i53;
import '../../src/nav_bar/presentation/bloc/nav_bar_bloc.dart' as _i29;
import '../../src/notifications/data/data_sources/notifications_datasource.dart'
    as _i30;
import '../../src/notifications/data/repositories/notifications_repo_imp.dart'
    as _i32;
import '../../src/notifications/domain/repositories/notifications_repo.dart'
    as _i31;
import '../../src/notifications/presentation/bloc/notification_bloc.dart'
    as _i54;
import '../../src/profile/data/data_sources/profile_datasource.dart' as _i33;
import '../../src/profile/data/repositories/profile_repo_imp.dart' as _i35;
import '../../src/profile/domain/repositories/profile_repo.dart' as _i34;
import '../../src/profile/presentation/bloc/profile_bloc.dart' as _i55;
import '../../src/settings/data/data_sources/settings_datasource.dart' as _i36;
import '../../src/settings/data/repositories/settings_repo_imp.dart' as _i38;
import '../../src/settings/domain/repositories/settings_repo.dart' as _i37;
import '../../src/settings/presentation/bloc/about_logeste_bloc.dart' as _i42;
import '../../src/splash/data/data_sources/splash_datasource.dart' as _i40;
import '../../src/splash/data/repositories/splash_repo.dart' as _i45;
import '../../src/splash/domain/repositories/base_splash_repo.dart' as _i44;
import '../../src/splash/domain/use_cases/splash_usecase.dart' as _i56;
import '../../src/splash/presentation/bloc/splash_bloc.dart' as _i58;
import '../../src/teachers/data/data_sources/teacher_datasource.dart' as _i41;
import '../../src/teachers/data/repositories/teacher_repo.dart' as _i47;
import '../../src/teachers/domin/repositories/base_teacher_repo.dart' as _i46;
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
  gh.factory<_i8.CoursesDatasource>(() => _i8.CoursesDatasource(gh<_i4.Dio>()));
  gh.factory<_i9.CoursesRepo>(
      () => _i10.CoursesRepoImp(gh<_i8.CoursesDatasource>()));
  gh.factory<_i11.DepartmentCubit>(
      () => _i11.DepartmentCubit(gh<_i12.DepartmentsRepoImp>()));
  gh.factory<_i13.DepartmentsDatasource>(
      () => _i13.DepartmentsDatasource(gh<_i4.Dio>()));
  gh.factory<_i14.DepartmentsRepo>(
      () => _i12.DepartmentsRepoImp(gh<_i13.DepartmentsDatasource>()));
  gh.factory<_i15.FavoriteDatasource>(
      () => _i15.FavoriteDatasource(gh<_i4.Dio>()));
  gh.factory<_i16.FavoriteRepo>(
      () => _i17.FavoriteRepoImp(gh<_i15.FavoriteDatasource>()));
  gh.factory<_i18.ForgotPasswordDataSource>(
      () => _i18.ForgotPasswordDataSource(gh<_i4.Dio>()));
  gh.factory<_i19.ForgotPasswordRepo>(
      () => _i20.ForgotPasswordRepoImp(gh<_i18.ForgotPasswordDataSource>()));
  gh.factory<_i21.GradesDatasource>(() => _i21.GradesDatasource(gh<_i4.Dio>()));
  gh.factory<_i22.GradesRepo>(
      () => _i23.GradesRepoImp(gh<_i21.GradesDatasource>()));
  gh.factory<_i24.HomeDatasource>(() => _i24.HomeDatasource(gh<_i4.Dio>()));
  gh.factory<_i25.HomeRepo>(() => _i26.HomeRepoImp(gh<_i24.HomeDatasource>()));
  gh.factory<_i27.LessonDetailsCubit>(
      () => _i27.LessonDetailsCubit(gh<_i9.CoursesRepo>()));
  gh.factory<_i28.MyCoursesCubit>(
      () => _i28.MyCoursesCubit(gh<_i9.CoursesRepo>()));
  gh.factory<_i29.NavBarState>(() => _i29.NavBarState());
  gh.factory<_i30.NotificationsDatasource>(
      () => _i30.NotificationsDatasource(gh<_i4.Dio>()));
  gh.factory<_i31.NotificationsRepo>(
      () => _i32.NotificationsRepoImp(gh<_i30.NotificationsDatasource>()));
  gh.factory<_i33.ProfileDataSource>(
      () => _i33.ProfileDataSource(gh<_i4.Dio>()));
  gh.factory<_i34.ProfileRepo>(
      () => _i35.ProfileRepoImp(gh<_i33.ProfileDataSource>()));
  gh.factory<_i36.SettingsDatasource>(
      () => _i36.SettingsDatasource(gh<_i4.Dio>()));
  gh.factory<_i37.SettingsRepo>(
      () => _i38.SettingsRepoImp(gh<_i36.SettingsDatasource>()));
  await gh.factoryAsync<_i39.SharedPreferences>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i40.SplashDatasource>(() => _i40.SplashDatasource(gh<_i4.Dio>()));
  gh.factory<_i41.TeacherDatasource>(
      () => _i41.TeacherDatasource(gh<_i4.Dio>()));
  gh.factory<_i42.AboutCubit>(() => _i42.AboutCubit(gh<_i37.SettingsRepo>()));
  gh.factory<_i43.AuthCubit>(() => _i43.AuthCubit(gh<_i5.AuthRepo>()));
  gh.factory<_i44.BaseSplashRepo>(
      () => _i45.SplashRepo(gh<_i40.SplashDatasource>()));
  gh.factory<_i46.BaseTeacherRepo>(
      () => _i47.TeacherRepo(gh<_i41.TeacherDatasource>()));
  gh.factory<_i48.CourseDetailsCubit>(
      () => _i48.CourseDetailsCubit(gh<_i9.CoursesRepo>()));
  gh.factory<_i49.CoursesCubit>(
      () => _i49.CoursesCubit(gh<_i16.FavoriteRepo>()));
  gh.factory<_i50.FavoriteCubit>(
      () => _i50.FavoriteCubit(gh<_i16.FavoriteRepo>()));
  gh.factory<_i51.ForgotPasswordCubit>(() => _i51.ForgotPasswordCubit(
        gh<_i19.ForgotPasswordRepo>(),
        gh<_i5.AuthRepo>(),
      ));
  gh.factory<_i52.GradesCubit>(() => _i52.GradesCubit(gh<_i22.GradesRepo>()));
  gh.factory<_i53.HomeCubit>(() => _i53.HomeCubit(
        gh<_i25.HomeRepo>(),
        gh<_i16.FavoriteRepo>(),
      ));
  gh.factory<_i54.NotificationsCubit>(
      () => _i54.NotificationsCubit(gh<_i31.NotificationsRepo>()));
  gh.factory<_i55.ProfileBloc>(() => _i55.ProfileBloc(
        gh<_i34.ProfileRepo>(),
        gh<_i5.AuthRepo>(),
      ));
  gh.factory<_i56.SplashUseCase>(
      () => _i56.SplashUseCase(gh<_i44.BaseSplashRepo>()));
  gh.factory<_i57.TeacherCubit>(
      () => _i57.TeacherCubit(gh<_i46.BaseTeacherRepo>()));
  gh.factory<_i58.SplashCubit>(
      () => _i58.SplashCubit(gh<_i56.SplashUseCase>()));
  return getIt;
}

class _$InjectionModule extends _i59.InjectionModule {}
