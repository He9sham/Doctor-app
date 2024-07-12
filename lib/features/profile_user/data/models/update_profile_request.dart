import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_profile_request.g.dart';
@JsonSerializable()
class UpdateProfileRequest {
  final String name;
  final String email;
  final String phone;
  final String password;
  final int gender;

  UpdateProfileRequest({
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
    required this.gender,
  });
  
  Map<String, dynamic> toJson() => _$UpdateProfileRequestToJson(this);
}
