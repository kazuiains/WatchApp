class AppFeature {
  String? name;
  String? address;
  String? email;
  String? phoneNumber;
  String? city;
  String? id;

  AppFeature({
    this.name,
    this.address,
    this.email,
    this.phoneNumber,
    this.city,
    this.id,
  });

  AppFeature copyWith({
    String? name,
    String? address,
    String? email,
    String? phoneNumber,
    String? city,
    String? id,
  }) =>
      AppFeature(
        name: name ?? this.name,
        address: address ?? this.address,
        email: email ?? this.email,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        city: city ?? this.city,
        id: id ?? this.id,
      );
}
