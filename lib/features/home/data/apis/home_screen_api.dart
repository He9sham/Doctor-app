import 'package:dio/dio.dart';
import 'package:doctor/core/networking/api_constanse.dart';
import 'package:doctor/features/home/data/apis/home_api_constans.dart';
import 'package:doctor/features/home/data/models/specialization_response_api.dart';
import 'package:retrofit/http.dart';

part 'home_screen_api.g.dart';

@RestApi(baseUrl: ApiConstaens.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstans.specializationEP)
  Future<SpecializationsResponseModel> getSpecializations();
}
