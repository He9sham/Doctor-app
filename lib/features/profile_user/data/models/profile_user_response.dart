import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_user_response.g.dart';

@JsonSerializable()
class ProfileUserResponse {
  @JsonKey(name: "data")
  List<ProfileUserResponseData>? profileUserData;

  ProfileUserResponse({this.profileUserData});

  factory ProfileUserResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileUserResponseFromJson(json);
}

@JsonSerializable()
class ProfileUserResponseData {
  int? id;
  String? email;
  String? name;
  String? phone;
  String? gender;

  ProfileUserResponseData({
    this.id,
    this.email,
    this.name,
    this.phone,
    this.gender,
  });

  factory ProfileUserResponseData.fromJson(Map<String, dynamic> json) =>
      _$ProfileUserResponseDataFromJson(json);
}
