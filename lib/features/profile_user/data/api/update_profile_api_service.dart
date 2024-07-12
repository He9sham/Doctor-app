import 'package:dio/dio.dart';
import 'package:doctor/features/profile_user/data/api/update_profile_api_constans.dart';
import 'package:doctor/features/profile_user/data/models/update_profile_request.dart';
import 'package:doctor/features/profile_user/data/models/update_profile_response.dart';
import 'package:retrofit/http.dart';

part 'update_profile_api_service.g.dart';

@RestApi(baseUrl: UpdateProfileApiConstans.updateProfileApi)
abstract class UpdateProfileApiService {
  factory UpdateProfileApiService(Dio dio) = _UpdateProfileApiService;

  @POST(UpdateProfileApiConstans.updateProfileApi)
  Future<UpdateProfileResponse> updateProfileApi(
      @Body() UpdateProfileRequest updateProfileRequest);
}
