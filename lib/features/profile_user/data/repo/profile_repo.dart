import 'package:doctor/core/networking/api_error_handler.dart';
import 'package:doctor/core/networking/api_result.dart';
import 'package:doctor/features/profile_user/data/api/profile_user_api.dart';
import 'package:doctor/features/profile_user/data/models/profile_user_response.dart';

class ProfileRepo 
{
   final ProfileUserApi _profileUserApi;

  ProfileRepo(this._profileUserApi);

  Future<ApiResult<ProfileUserResponse>> getProfileUser() async {
    try {
      final response = await _profileUserApi.getprofileuser();

      return ApiResult.success(response);
    } on Exception catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}