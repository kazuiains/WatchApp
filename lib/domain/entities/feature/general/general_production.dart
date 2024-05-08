

class GeneralProduction {
  num? id;
  String? iso31661;
  String? logoPath;
  String? name;
  String? originCountry;

  GeneralProduction({
    this.id,
    this.iso31661,
    this.logoPath,
    this.name,
    this.originCountry,
  });

  GeneralProduction copyWith({
    num? id,
    String? iso31661,
    String? logoPath,
    String? name,
    String? originCountry,
  }) =>
      GeneralProduction(
        id: id ?? this.id,
        iso31661: iso31661 ?? this.iso31661,
        logoPath: logoPath ?? this.logoPath,
        name: name ?? this.name,
        originCountry: originCountry ?? this.originCountry,
      );
}
