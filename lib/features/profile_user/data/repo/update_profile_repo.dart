import 'package:doctor/core/networking/api_error_handler.dart';
import 'package:doctor/core/networking/api_result.dart';
import 'package:doctor/features/profile_user/data/api/update_profile_api_service.dart';
import 'package:doctor/features/profile_user/data/models/update_profile_request.dart';
import 'package:doctor/features/profile_user/data/models/update_profile_response.dart';

class UpdateProfileRepo {
  final UpdateProfileApiService _updateProfileApiService;

  UpdateProfileRepo(this._updateProfileApiService);
  Future<ApiResult<UpdateProfileResponse>> updateProfileApi(
      UpdateProfileRequest updateProfileRequest) async {
    try {
      final response =
          await _updateProfileApiService.updateProfileApi(updateProfileRequest);
      return ApiResult.success(response);
    } on Exception catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
