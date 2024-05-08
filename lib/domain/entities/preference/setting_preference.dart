class SettingPreference {
  String? translatorId;
  String? translatorName;
  String? language;
  String? country;
  bool? selected;
  dynamic dynamicValue;

  SettingPreference({
    this.translatorId,
    this.translatorName,
    this.language,
    this.country,
    this.selected,
    this.dynamicValue,
  });

  SettingPreference copyWith({
    String? translatorId,
    String? translatorName,
    String? language,
    String? country,
    bool? selected,
    dynamic dynamicValue,
  }) =>
      SettingPreference(
        translatorId: translatorId ?? this.translatorId,
        translatorName: translatorName ?? this.translatorName,
        language: language ?? this.language,
        country: country ?? this.language,
        selected: selected ?? this.selected,
        dynamicValue: dynamicValue ?? this.dynamicValue,
      );
}
