// To parse this JSON data, do
//
//     final data = dataFromJson(jsonString);

import 'dart:convert';
import 'Gujarat.dart';

List<Data> dataFromJson(String str) => List<Data>.from(json.decode(str).map((x) => Data.fromJson(x)));

String dataToJson(List<Data> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Data {
  String state;
  String statecode;
  List<DistrictDatum> districtData;

  Data({
    this.state,
    this.statecode,
    this.districtData,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    state: json["state"],
    statecode: json["statecode"],
    districtData: List<DistrictDatum>.from(json["districtData"].map((x) => DistrictDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "state": state,
    "statecode": statecode,
    "districtData": List<dynamic>.from(districtData.map((x) => x.toJson())),
  };
}

class DistrictDatum {
  String district;
  Notes notes;
  int active;
  int confirmed;
  int deceased;
  int recovered;
  Delta delta;

  DistrictDatum({
    this.district,
    this.notes,
    this.active,
    this.confirmed,
    this.deceased,
    this.recovered,
    this.delta,
  });

  factory DistrictDatum.fromJson(Map<String, dynamic> json) => DistrictDatum(
    district: json["district"],
    notes: notesValues.map[json["notes"]],
    active: json["active"],
    confirmed: json["confirmed"],
    deceased: json["deceased"],
    recovered: json["recovered"],
    delta: Delta.fromJson(json["delta"]),
  );

  Map<String, dynamic> toJson() => {
    "district": district,
    "notes": notesValues.reverse[notes],
    "active": active,
    "confirmed": confirmed,
    "deceased": deceased,
    "recovered": recovered,
    "delta": delta.toJson(),
  };
}

class Delta {
  int confirmed;
  int deceased;
  int recovered;

  Delta({
    this.confirmed,
    this.deceased,
    this.recovered,
  });

  factory Delta.fromJson(Map<String, dynamic> json) => Delta(
    confirmed: json["confirmed"],
    deceased: json["deceased"],
    recovered: json["recovered"],
  );

  Map<String, dynamic> toJson() => {
    "confirmed": confirmed,
    "deceased": deceased,
    "recovered": recovered,
  };
}

enum Notes { EMPTY, CATEGORY_ADDED_IN_TELANGANA_STATE_BULLETIN }

final notesValues = EnumValues({
  "Category added in Telangana State Bulletin": Notes.CATEGORY_ADDED_IN_TELANGANA_STATE_BULLETIN,
  "": Notes.EMPTY
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
