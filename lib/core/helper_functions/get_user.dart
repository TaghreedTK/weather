import 'dart:convert';

import 'package:weather_app/constants.dart';
import 'package:weather_app/core/services/shared_preferences_singleton.dart';
import 'package:weather_app/features/auth/data/models/user_model.dart';
import 'package:weather_app/features/auth/domain/entites/user_entity.dart';

UserEntity? getUser() {
  var jsonString = Prefs.getString(kUserData);
  if (jsonString == null) {
    return null;
  }
  var userEntity = UserModel.fromJson(jsonDecode(jsonString));
  return userEntity;
}
