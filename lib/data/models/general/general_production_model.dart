import 'dart:convert';

import 'package:watch_app/domain/entities/feature/general/general_production.dart';

GeneralProductionModel generalProductionFromJson(String str) => GeneralProductionModel.fromJson(json.decode(str));

String generalProductionToJson(GeneralProductionModel data) => json.encode(data.toJson());

class GeneralProductionModel extends GeneralProduction {
  GeneralProductionModel({
    super.id,
    super.iso31661,
    super.logoPath,
    super.name,
    super.originCountry,
  });

  _initFromEntity(GeneralProduction entity) {
    id = entity.id;
    iso31661 = entity.iso31661;
    logoPath = entity.logoPath;
    name = entity.name;
    originCountry = entity.originCountry;
  }

  GeneralProductionModel.fromDynamic(dynamic dynamicEntity) {
    var dataEntity = (dynamicEntity as GeneralProduction);
    _initFromEntity(dataEntity);
  }

  GeneralProductionModel.fromEntity(GeneralProduction entity) {
    _initFromEntity(entity);
  }

  GeneralProductionModel.fromJson(dynamic json) {
    if (json != null) {
      id = json['id'];
      iso31661 = json['iso_3166_1'];
      logoPath = json['logo_path'];
      name = json['name'];
      originCountry = json['origin_country'];
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (id != null) {
      map['id'] = id;
    }
    if (iso31661 != null) {
      map['iso_3166_1'] = iso31661;
    }
    if (logoPath != null) {
      map['logo_path'] = logoPath;
    }
    if (name != null) {
      map['name'] = name;
    }
    if (originCountry != null) {
      map['origin_country'] = originCountry;
    }
    return map;
  }
}
