import 'dart:convert';

import 'package:watch_app/domain/entities/feature/general/general_file.dart';

GeneralFileModel generalFileFromJson(String str) => GeneralFileModel.fromJson(json.decode(str));

String generalFileToJson(GeneralFileModel data) => json.encode(data.toJson());

class GeneralFileModel extends GeneralFile {
  GeneralFileModel({
    super.aspectRatio,
    super.height,
    super.iso6391,
    super.iso31661,
    super.name,
    super.key,
    super.site,
    super.size,
    super.type,
    super.official,
    super.publishedAt,
    super.filePath,
    super.voteAverage,
    super.voteCount,
    super.width,
    super.id,
  });

  _initFromEntity(GeneralFile entity) {
    aspectRatio = entity.aspectRatio;
    height = entity.height;
    iso6391 = entity.iso6391;
    iso31661 = entity.iso31661;
    name = entity.name;
    key = entity.key;
    site = entity.site;
    size = entity.size;
    type = entity.type;
    official = entity.official;
    publishedAt = entity.publishedAt;
    filePath = entity.filePath;
    voteAverage = entity.voteAverage;
    voteCount = entity.voteCount;
    width = entity.width;
    id = entity.id;
  }

  GeneralFileModel.fromDynamic(dynamic dynamicEntity) {
    var dataEntity = (dynamicEntity as GeneralFile);
    _initFromEntity(dataEntity);
  }

  GeneralFileModel.fromEntity(GeneralFile entity) {
    _initFromEntity(entity);
  }

  GeneralFileModel.fromJson(dynamic json) {
    if (json != null) {
      aspectRatio = json['aspect_ratio'];
      height = json['height'];
      iso6391 = json['iso_639_1'];
      iso31661 = json['iso_3166_1'];
      name = json['name'];
      key = json['key'];
      site = json['site'];
      size = json['size'];
      type = json['type'];
      official = json['official'];
      publishedAt = json['published_at'];
      filePath = json['file_path'];
      voteAverage = json['vote_average'];
      voteCount = json['vote_count'];
      width = json['width'];
      id = json['id'];
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (aspectRatio != null) {
      map['aspect_ratio'] = aspectRatio;
    }
    if (height != null) {
      map['height'] = height;
    }
    if (iso6391 != null) {
      map['iso_639_1'] = iso6391;
    }
    if (iso31661 != null) {
      map['iso_3166_1'] = iso31661;
    }
    if (name != null) {
      map['name'] = name;
    }
    if (key != null) {
      map['key'] = key;
    }
    if (site != null) {
      map['site'] = site;
    }
    if (size != null) {
      map['size'] = size;
    }
    if (type != null) {
      map['type'] = type;
    }
    if (official != null) {
      map['official'] = official;
    }
    if (publishedAt != null) {
      map['published_at'] = publishedAt;
    }
    if (filePath != null) {
      map['file_path'] = filePath;
    }
    if (voteAverage != null) {
      map['vote_average'] = voteAverage;
    }
    if (voteCount != null) {
      map['vote_count'] = voteCount;
    }
    if (width != null) {
      map['width'] = width;
    }
    if (id != null) {
      map['id'] = id;
    }
    return map;
  }
}
