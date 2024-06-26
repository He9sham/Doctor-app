// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileUserResponse _$ProfileUserResponseFromJson(Map<String, dynamic> json) =>
    ProfileUserResponse(
      profileUserData: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              ProfileUserResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProfileUserResponseToJson(
        ProfileUserResponse instance) =>
    <String, dynamic>{
      'data': instance.profileUserData,
    };

ProfileUserResponseData _$ProfileUserResponseDataFromJson(
        Map<String, dynamic> json) =>
    ProfileUserResponseData(
      id: (json['id'] as num?)?.toInt(),
      email: json['email'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      gender: json['gender'] as String?,
    );

Map<String, dynamic> _$ProfileUserResponseDataToJson(
        ProfileUserResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'phone': instance.phone,
      'gender': instance.gender,
    };
