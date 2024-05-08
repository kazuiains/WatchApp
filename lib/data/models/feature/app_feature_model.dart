import 'dart:convert';

import 'package:watch_app/domain/entities/feature/app_feature.dart';

AppFeatureModel appFeatureFromJson(String str) => AppFeatureModel.fromJson(json.decode(str));

String appFeatureToJson(AppFeatureModel data) => json.encode(data.toJson());

class AppFeatureModel extends AppFeature {
  AppFeatureModel({
    super.name,
    super.address,
    super.email,
    super.phoneNumber,
    super.city,
    super.id,
  });

  _initFromEntity(AppFeature entity) {
    name = entity.name;
    address = entity.address;
    email = entity.email;
    phoneNumber = entity.phoneNumber;
    city = entity.city;
    id = entity.id;
  }

  AppFeatureModel.fromDynamic(dynamic dynamicEntity) {
    var dataEntity = (dynamicEntity as AppFeature);
    _initFromEntity(dataEntity);
  }

  AppFeatureModel.fromEntity(AppFeature entity) {
    _initFromEntity(entity);
  }

  AppFeatureModel.fromJson(dynamic json) {
    if (json != null) {
      name = json['name'];
      address = json['address'];
      email = json['email'];
      phoneNumber = json['phoneNumber'];
      city = json['city'];
      id = json['id'];
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (name != null) {
      map['name'] = name;
    }
    if (address != null) {
      map['address'] = address;
    }
    if (email != null) {
      map['email'] = email;
    }
    if (phoneNumber != null) {
      map['phoneNumber'] = phoneNumber;
    }
    if (city != null) {
      map['city'] = city;
    }
    if (id != null) {
      map['id'] = id;
    }
    return map;
  }
}
