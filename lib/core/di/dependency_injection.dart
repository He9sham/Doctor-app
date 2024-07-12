import 'package:dio/dio.dart';
import 'package:doctor/core/networking/api_service.dart';
import 'package:doctor/core/networking/dio_factory.dart';
import 'package:doctor/features/home/data/apis/home_screen_api.dart';
import 'package:doctor/features/home/data/repos/home_repo.dart';
import 'package:doctor/features/login/data/repo/login_repo.dart';
import 'package:doctor/features/login/logic/login_cubit.dart';
import 'package:doctor/features/profile_user/data/api/profile_user_api.dart';
import 'package:doctor/features/profile_user/data/api/update_profile_api_service.dart';
import 'package:doctor/features/profile_user/data/repo/profile_repo.dart';
import 'package:doctor/features/profile_user/data/repo/update_profile_repo.dart';
import 'package:doctor/features/profile_user/logic/update_profile_cubit/update_profile_cubit.dart';
import 'package:doctor/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:doctor/features/sign_up/logic/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  getIt.registerLazySingleton<Dio>(() => dio);

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));

  // Profile
  getIt.registerLazySingleton<ProfileUserApi>(() => ProfileUserApi(dio));
  getIt.registerLazySingleton<ProfileRepo>(() => ProfileRepo(getIt()));

  // update profile
  getIt.registerLazySingleton<UpdateProfileRepo>(
      () => UpdateProfileRepo(getIt()));
  getIt.registerFactory<UpdateProfileCubit>(() => UpdateProfileCubit(getIt()));
  getIt.registerLazySingleton<UpdateProfileApiService>(
      () => UpdateProfileApiService(getIt<Dio>()));
}
