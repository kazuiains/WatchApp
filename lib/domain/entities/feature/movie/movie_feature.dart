import 'package:watch_app/domain/entities/feature/general/general_file.dart';
import 'package:watch_app/domain/entities/feature/general/general_production.dart';

class MovieFeature {
  bool? adult;
  String? name;
  String? englishName;
  String? iso6391;
  String? backdropPath;
  MovieFeature? belongsToCollection;
  num? budget;
  List<MovieFeature>? genres;
  String? homepage;
  num? id;
  String? imdbId;
  List<String>? originCountry;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  num? popularity;
  String? posterPath;
  List<GeneralProduction>? productionCompanies;
  List<GeneralProduction>? productionCountries;
  String? releaseDate;
  num? revenue;
  num? runtime;
  List<MovieFeature>? spokenLanguages;
  String? status;
  String? tagline;
  String? title;
  bool? video;
  num? voteAverage;
  num? voteCount;
  List<MovieFeature>? similar;
  List<GeneralFile>? videos;
  List<GeneralFile>? backdrops;
  List<GeneralFile>? logos;
  List<GeneralFile>? posters;

  MovieFeature({
    this.adult,
    this.name,
    this.englishName,
    this.iso6391,
    this.backdropPath,
    this.belongsToCollection,
    this.budget,
    this.genres,
    this.homepage,
    this.id,
    this.imdbId,
    this.originCountry,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCompanies,
    this.productionCountries,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.spokenLanguages,
    this.status,
    this.tagline,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
    this.similar,
    this.videos,
    this.backdrops,
    this.logos,
    this.posters,
  });

  MovieFeature copyWith({
    bool? adult,
    String? name,
    String? englishName,
    String? iso6391,
    String? backdropPath,
    MovieFeature? belongsToCollection,
    num? budget,
    List<MovieFeature>? genres,
    String? homepage,
    num? id,
    String? imdbId,
    List<String>? originCountry,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    num? popularity,
    String? posterPath,
    List<GeneralProduction>? productionCompanies,
    List<GeneralProduction>? productionCountries,
    String? releaseDate,
    num? revenue,
    num? runtime,
    List<MovieFeature>? spokenLanguages,
    String? status,
    String? tagline,
    String? title,
    bool? video,
    num? voteAverage,
    num? voteCount,
    List<MovieFeature>? similar,
    List<GeneralFile>? videos,
    List<GeneralFile>? backdrops,
    List<GeneralFile>? logos,
    List<GeneralFile>? posters,
  }) =>
      MovieFeature(
        adult: adult ?? this.adult,
        name: name ?? this.name,
        englishName: englishName ?? this.englishName,
        iso6391: iso6391 ?? this.iso6391,
        backdropPath: backdropPath ?? this.backdropPath,
        belongsToCollection: belongsToCollection ?? this.belongsToCollection,
        budget: budget ?? this.budget,
        genres: genres ?? this.genres,
        homepage: homepage ?? this.homepage,
        id: id ?? this.id,
        imdbId: imdbId ?? this.imdbId,
        originCountry: originCountry ?? this.originCountry,
        originalLanguage: originalLanguage ?? this.originalLanguage,
        originalTitle: originalTitle ?? this.originalTitle,
        overview: overview ?? this.overview,
        popularity: popularity ?? this.popularity,
        posterPath: posterPath ?? this.posterPath,
        productionCompanies: productionCompanies ?? this.productionCompanies,
        productionCountries: productionCountries ?? this.productionCountries,
        releaseDate: releaseDate ?? this.releaseDate,
        revenue: revenue ?? this.revenue,
        runtime: runtime ?? this.runtime,
        spokenLanguages: spokenLanguages ?? this.spokenLanguages,
        status: status ?? this.status,
        tagline: tagline ?? this.tagline,
        title: title ?? this.title,
        video: video ?? this.video,
        voteAverage: voteAverage ?? this.voteAverage,
        voteCount: voteCount ?? this.voteCount,
        similar: similar ?? this.similar,
        videos: videos ?? this.videos,
        backdrops: backdrops ?? this.backdrops,
        logos: logos ?? this.logos,
        posters: posters ?? this.posters,
      );
}
