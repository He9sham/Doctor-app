import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_profile_response.g.dart';

@JsonSerializable()
class UpdateProfileResponse {
  final String? message;
  @JsonKey(name: 'data')
  UserDataProfile? userData;
  final bool? status;
  final int? code;

  UpdateProfileResponse(this.message, this.status, this.code);

  factory UpdateProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileResponseFromJson(json);
}

@JsonSerializable()
class UserDataProfile {
  final int? id;
  final String? name;
  final String? email;
  final String? phone;
  final String? gender;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  UserDataProfile(
    this.id,
    this.name,
    this.email,
    this.phone,
    this.gender,
    this.createdAt,
    this.updatedAt,
  );

  factory UserDataProfile.fromJson(Map<String, dynamic> json) =>
      _$UserDataProfileFromJson(json);
}
