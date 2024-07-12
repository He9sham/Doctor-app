// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProfileResponse _$UpdateProfileResponseFromJson(
        Map<String, dynamic> json) =>
    UpdateProfileResponse(
      json['message'] as String?,
      json['status'] as bool?,
      (json['code'] as num?)?.toInt(),
    )..userData = json['data'] == null
        ? null
        : UserDataProfile.fromJson(json['data'] as Map<String, dynamic>);

Map<String, dynamic> _$UpdateProfileResponseToJson(
        UpdateProfileResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.userData,
      'status': instance.status,
      'code': instance.code,
    };

UserDataProfile _$UserDataProfileFromJson(Map<String, dynamic> json) =>
    UserDataProfile(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      json['email'] as String?,
      json['phone'] as String?,
      json['gender'] as String?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
    );

Map<String, dynamic> _$UserDataProfileToJson(UserDataProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'gender': instance.gender,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
