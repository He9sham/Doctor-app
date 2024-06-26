import 'package:dio/dio.dart';
import 'package:doctor/core/networking/api_constanse.dart';
import 'package:doctor/features/profile_user/data/api/profile_user_api_constans.dart';
import 'package:doctor/features/profile_user/data/models/profile_user_response.dart';
import 'package:retrofit/http.dart';

part 'profile_user_api.g.dart';

@RestApi(baseUrl: ApiConstaens.apiBaseUrl)
abstract class ProfileUserApi {
  factory ProfileUserApi(Dio dio) = _ProfileUserApi;

  @GET(ProfileUserApiConstans.profileUserEP)
  Future<ProfileUserResponse> getprofileuser();
}
