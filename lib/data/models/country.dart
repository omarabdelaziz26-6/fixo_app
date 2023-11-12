class Country {
  Country({
    this.deleted,
    required this.countryCode,
    required this.countryKey,
    required this.name,
    this.currency,
    this.createdAt,
    this.updatedAt,
    this.id,
  });

  bool? deleted;
  String countryCode;
  String countryKey;
  Pair name;
  Pair? currency;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? id;

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        deleted: json["deleted"],
        countryCode: json["countryCode"],
        countryKey: json["countryKey"],
        name: Pair.fromJson(json["name"]),
        currency: Pair.fromJson(json["currency"]),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "deleted": deleted,
        "countryCode": countryCode,
        "countryKey": countryKey,
        "name": name.toJson(),
        "currency": currency!.toJson(),
        "createdAt": createdAt!.toIso8601String(),
        "updatedAt": updatedAt!.toIso8601String(),
        "id": id,
      };
}

class Pair {
  Pair({
    required this.ar,
    required this.en,
  });

  String ar;
  String en;

  factory Pair.fromJson(Map<String, dynamic> json) => Pair(
        ar: json["ar"],
        en: json["en"],
      );

  Map<String, dynamic> toJson() => {
        "ar": ar,
        "en": en,
      };
}
