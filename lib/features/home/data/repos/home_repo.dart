import 'package:doctor/core/networking/api_error_handler.dart';
import 'package:doctor/core/networking/api_result.dart';
import 'package:doctor/features/home/data/apis/home_screen_api.dart';
import 'package:doctor/features/home/data/models/specialization_response_api.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async {
    try {
      final response = await _homeApiService.getSpecializations();

      return ApiResult.success(response);
    } on Exception catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
