

class GeneralFile {
  num? aspectRatio;
  num? height;
  String? iso6391;
  String? iso31661;
  String? name;
  String? key;
  String? site;
  num? size;
  String? type;
  bool? official;
  String? publishedAt;
  String? filePath;
  num? voteAverage;
  num? voteCount;
  num? width;
  String? id;

  GeneralFile({
    this.aspectRatio,
    this.height,
    this.iso6391,
    this.iso31661,
    this.name,
    this.key,
    this.site,
    this.size,
    this.type,
    this.official,
    this.publishedAt,
    this.filePath,
    this.voteAverage,
    this.voteCount,
    this.width,
    this.id,
  });

  GeneralFile copyWith({
    num? aspectRatio,
    num? height,
    String? iso6391,
    String? iso31661,
    String? name,
    String? key,
    String? site,
    num? size,
    String? type,
    bool? official,
    String? publishedAt,
    String? filePath,
    num? voteAverage,
    num? voteCount,
    num? width,
    String? id,
  }) =>
      GeneralFile(
        aspectRatio: aspectRatio ?? this.aspectRatio,
        height: height ?? this.height,
        iso6391: iso6391 ?? this.iso6391,
        iso31661: iso31661 ?? this.iso31661,
        name: name ?? this.name,
        key: key ?? this.key,
        site: site ?? this.site,
        size: size ?? this.size,
        type: type ?? this.type,
        official: official ?? this.official,
        publishedAt: publishedAt ?? this.publishedAt,
        filePath: filePath ?? this.filePath,
        voteAverage: voteAverage ?? this.voteAverage,
        voteCount: voteCount ?? this.voteCount,
        width: width ?? this.width,
        id: id ?? this.id,
      );
}
