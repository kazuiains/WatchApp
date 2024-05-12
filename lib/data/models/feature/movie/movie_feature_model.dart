import 'dart:convert';

import 'package:watch_app/data/models/feature/general/general_file_model.dart';
import 'package:watch_app/data/models/feature/general/general_production_model.dart';
import 'package:watch_app/domain/entities/feature/movie/movie_feature.dart';

MovieFeatureModel movieFeatureFromJson(String str) => MovieFeatureModel.fromJson(json.decode(str));

String movieFeatureToJson(MovieFeatureModel data) => json.encode(data.toJson());

class MovieFeatureModel extends MovieFeature {
  MovieFeatureModel({
    super.adult,
    super.name,
    super.englishName,
    super.iso6391,
    super.backdropPath,
    super.belongsToCollection,
    super.budget,
    super.genres,
    super.homepage,
    super.id,
    super.imdbId,
    super.originCountry,
    super.originalLanguage,
    super.originalTitle,
    super.overview,
    super.popularity,
    super.posterPath,
    super.productionCompanies,
    super.productionCountries,
    super.releaseDate,
    super.revenue,
    super.runtime,
    super.spokenLanguages,
    super.status,
    super.tagline,
    super.title,
    super.video,
    super.voteAverage,
    super.voteCount,
    super.similar,
    super.videos,
    super.backdrops,
    super.logos,
    super.posters,
  });

  _initFromEntity(MovieFeature entity) {
    adult = entity.adult;
    name = entity.name;
    englishName = entity.englishName;
    iso6391 = entity.iso6391;
    backdropPath = entity.backdropPath;
    belongsToCollection = entity.belongsToCollection;
    budget = entity.budget;
    genres = entity.genres;
    homepage = entity.homepage;
    id = entity.id;
    imdbId = entity.imdbId;
    originCountry = entity.originCountry;
    originalLanguage = entity.originalLanguage;
    originalTitle = entity.originalTitle;
    overview = entity.overview;
    popularity = entity.popularity;
    posterPath = entity.posterPath;
    productionCompanies = entity.productionCompanies;
    productionCountries = entity.productionCountries;
    releaseDate = entity.releaseDate;
    revenue = entity.revenue;
    runtime = entity.runtime;
    spokenLanguages = entity.spokenLanguages;
    status = entity.status;
    tagline = entity.tagline;
    title = entity.title;
    video = entity.video;
    voteAverage = entity.voteAverage;
    voteCount = entity.voteCount;
    similar = entity.similar;
    videos = entity.videos;
    backdrops = entity.backdrops;
    logos = entity.logos;
    posters = entity.posters;
  }

  MovieFeatureModel.fromDynamic(dynamic dynamicEntity) {
    var dataEntity = (dynamicEntity as MovieFeature);
    _initFromEntity(dataEntity);
  }

  MovieFeatureModel.fromEntity(MovieFeature entity) {
    _initFromEntity(entity);
  }

  MovieFeatureModel.fromJson(dynamic json) {
    if (json != null) {
      adult = json['adult'];
      name = json['name'];
      englishName = json['english_name'];
      iso6391 = json['iso_639_1'];
      backdropPath = json['backdrop_path'];
      belongsToCollection = json['belongs_to_collection'] != null ? MovieFeatureModel.fromJson(json['belongs_to_collection']) : null;
      budget = json['budget'];
      if (json['genres'] != null) {
        genres = [];
        json['genres'].forEach((v) {
          genres?.add(MovieFeatureModel.fromJson(v));
        });
      }
      homepage = json['homepage'];
      id = json['id'];
      imdbId = json['imdb_id'];
      originCountry = json['origin_country'] != null ? json['origin_country'].cast<String>() : [];
      originalLanguage = json['original_language'];
      originalTitle = json['original_title'];
      overview = json['overview'];
      popularity = json['popularity'];
      posterPath = json['poster_path'];
      if (json['production_companies'] != null) {
        productionCompanies = [];
        json['production_companies'].forEach((v) {
          productionCompanies?.add(GeneralProductionModel.fromJson(v));
        });
      }
      if (json['production_countries'] != null) {
        productionCountries = [];
        json['production_countries'].forEach((v) {
          productionCountries?.add(GeneralProductionModel.fromJson(v));
        });
      }
      releaseDate = json['release_date'];
      revenue = json['revenue'];
      runtime = json['runtime'];
      if (json['spoken_languages'] != null) {
        spokenLanguages = [];
        json['spoken_languages'].forEach((v) {
          spokenLanguages?.add(MovieFeatureModel.fromJson(v));
        });
      }
      status = json['status'];
      tagline = json['tagline'];
      title = json['title'];
      video = json['video'];
      voteAverage = json['vote_average'];
      voteCount = json['vote_count'];

      var similarJson = json['similar'];
      if (similarJson != null) {
        if (similarJson['results'] != null) {
          similar = [];
          similarJson['results'].forEach((v) {
            similar?.add(MovieFeatureModel.fromJson(v));
          });
        }
      }

      var videosJson = json['videos'];
      if (videosJson != null) {
        if (videosJson['results'] != null) {
          videos = [];
          videosJson['results'].forEach((v) {
            videos?.add(GeneralFileModel.fromJson(v));
          });
        }
      }

      var imagesJson = json['images'];
      if (imagesJson != null) {
        if (imagesJson['backdrops'] != null) {
          backdrops = [];
          imagesJson['backdrops'].forEach((v) {
            backdrops?.add(GeneralFileModel.fromJson(v));
          });
        }
        if (imagesJson['logos'] != null) {
          logos = [];
          imagesJson['logos'].forEach((v) {
            logos?.add(GeneralFileModel.fromJson(v));
          });
        }
        if (imagesJson['posters'] != null) {
          posters = [];
          imagesJson['posters'].forEach((v) {
            posters?.add(GeneralFileModel.fromJson(v));
          });
        }
      }
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (adult != null) {
      map['adult'] = adult;
    }
    if (name != null) {
      map['name'] = name;
    }
    if (englishName != null) {
      map['english_name'] = englishName;
    }
    if (iso6391 != null) {
      map['iso_639_1'] = iso6391;
    }
    if (backdropPath != null) {
      map['backdrop_path'] = backdropPath;
    }
    if (belongsToCollection != null) {
      map['belongs_to_collection'] = MovieFeatureModel.fromEntity(belongsToCollection!).toJson();
    }
    if (budget != null) {
      map['budget'] = budget;
    }
    if (genres != null) {
      map['genres'] = genres?.map((v) => MovieFeatureModel.fromEntity(v).toJson()).toList();
    }
    if (homepage != null) {
      map['homepage'] = homepage;
    }
    if (id != null) {
      map['id'] = id;
    }
    if (imdbId != null) {
      map['imdb_id'] = imdbId;
    }
    if (originCountry != null) {
      map['origin_country'] = originCountry;
    }
    if (originalLanguage != null) {
      map['original_language'] = originalLanguage;
    }
    if (originalTitle != null) {
      map['original_title'] = originalTitle;
    }
    if (overview != null) {
      map['overview'] = overview;
    }
    if (popularity != null) {
      map['popularity'] = popularity;
    }
    if (posterPath != null) {
      map['poster_path'] = posterPath;
    }
    if (productionCompanies != null) {
      map['production_companies'] = productionCompanies?.map((v) => GeneralProductionModel.fromEntity(v).toJson()).toList();
    }
    if (productionCountries != null) {
      map['production_countries'] = productionCountries?.map((v) => GeneralProductionModel.fromEntity(v).toJson()).toList();
    }
    if (releaseDate != null) {
      map['release_date'] = releaseDate;
    }
    if (revenue != null) {
      map['revenue'] = revenue;
    }
    if (runtime != null) {
      map['runtime'] = runtime;
    }
    if (spokenLanguages != null) {
      map['spoken_languages'] = spokenLanguages?.map((v) => MovieFeatureModel.fromEntity(v).toJson()).toList();
    }
    if (status != null) {
      map['status'] = status;
    }
    if (tagline != null) {
      map['tagline'] = tagline;
    }
    if (title != null) {
      map['title'] = title;
    }
    if (video != null) {
      map['video'] = video;
    }
    if (voteAverage != null) {
      map['vote_average'] = voteAverage;
    }
    if (voteCount != null) {
      map['vote_count'] = voteCount;
    }
    return map;
  }
}
