// To parse this JSON data, do
//
//     final weather = weatherFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class Weather {
  Weather({
    required this.location,
    required this.current,
  });

  final Location location;
  final Current current;

  Weather copyWith({
    required Location location,
    required Current current,
  }) =>
      Weather(
        location: location ,
        current: current ,
      );

  factory Weather.fromRawJson(String str) => Weather.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
    location: Location.fromJson(json["location"]),
    current: Current.fromJson(json["current"]),
  );

  Map<String, dynamic> toJson() => {
    "location": location.toJson(),
    "current": current.toJson(),
  };
}

class Current {
  Current({
    required this.lastUpdatedEpoch,
    required this.lastUpdated,
    required this.tempC,
    required this.tempF,
    required this.isDay,
    required this.condition,
    required this.windMph,
    required this.windKph,
    required this.windDegree,
    required this.windDir,
    required this.pressureMb,
    required this.pressureIn,
    required this.precipMm,
    required this.precipIn,
    required this.humidity,
    required this.cloud,
    required this.feelslikeC,
    required this.feelslikeF,
    required this.visKm,
    required this.visMiles,
    required this.uv,
    required this.gustMph,
    required this.gustKph,
  });

  final int lastUpdatedEpoch;
  final String lastUpdated;
  final double tempC;
  final double tempF;
  final int isDay;
  final Condition condition;
  final double windMph;
  final double windKph;
  final int windDegree;
  final String windDir;
  final double pressureMb;
  final double pressureIn;
  final double precipMm;
  final double precipIn;
  final int humidity;
  final int cloud;
  final double feelslikeC;
  final double feelslikeF;
  final double visKm;
  final double visMiles;
  final double uv;
  final double gustMph;
  final double gustKph;

  Current copyWith({
    required int lastUpdatedEpoch,
    required String lastUpdated,
    required double tempC,
    required double tempF,
    required int isDay,
    required Condition condition,
    required double windMph,
    required double windKph,
    required int windDegree,
    required String windDir,
    required double pressureMb,
    required double pressureIn,
    required double precipMm,
    required double precipIn,
    required int humidity,
    required int cloud,
    required double feelslikeC,
    required double feelslikeF,
    required double visKm,
    required double visMiles,
    required double uv,
    required double gustMph,
    required double gustKph,
  }) =>
      Current(
        lastUpdatedEpoch: lastUpdatedEpoch ,
        lastUpdated: lastUpdated ,
        tempC: tempC ,
        tempF: tempF ,
        isDay: isDay ,
        condition: condition ,
        windMph: windMph ,
        windKph: windKph ,
        windDegree: windDegree ,
        windDir: windDir ,
        pressureMb: pressureMb ,
        pressureIn: pressureIn ,
        precipMm: precipMm ,
        precipIn: precipIn ,
        humidity: humidity ,
        cloud: cloud ,
        feelslikeC: feelslikeC ,
        feelslikeF: feelslikeF ,
        visKm: visKm ,
        visMiles: visMiles ,
        uv: uv ,
        gustMph: gustMph ,
        gustKph: gustKph ,
      );

  factory Current.fromRawJson(String str) => Current.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Current.fromJson(Map<String, dynamic> json) => Current(
    lastUpdatedEpoch: json["last_updated_epoch"],
    lastUpdated: json["last_updated"],
    tempC: json["temp_c"] as double,
    tempF: json["temp_f"] as double,
    isDay: json["is_day"],
    condition: Condition.fromJson(json["condition"]),
    windMph: json["wind_mph"] as double,
    windKph: json["wind_kph"] as double,
    windDegree: json["wind_degree"],
    windDir: json["wind_dir"],
    pressureMb: json["pressure_mb"] as double,
    pressureIn: json["pressure_in"] as double,
    precipMm: json["precip_mm"] as double,
    precipIn: json["precip_in"] as double,
    humidity: json["humidity"],
    cloud: json["cloud"],
    feelslikeC: json["feelslike_c"] as double,
    feelslikeF: json["feelslike_f"] as double,
    visKm: json["vis_km"] as double,
    visMiles: json["vis_miles"] as double,
    uv: json["uv"] as double,
    gustMph: json["gust_mph"] as double,
    gustKph: json["gust_kph"] as double,
  );

  Map<String, dynamic> toJson() => {
    "last_updated_epoch": lastUpdatedEpoch,
    "last_updated": lastUpdated,
    "temp_c": tempC,
    "temp_f": tempF,
    "is_day": isDay,
    "condition": condition.toJson(),
    "wind_mph": windMph,
    "wind_kph": windKph,
    "wind_degree": windDegree,
    "wind_dir": windDir,
    "pressure_mb": pressureMb,
    "pressure_in": pressureIn,
    "precip_mm": precipMm,
    "precip_in": precipIn,
    "humidity": humidity,
    "cloud": cloud,
    "feelslike_c": feelslikeC,
    "feelslike_f": feelslikeF,
    "vis_km": visKm,
    "vis_miles": visMiles,
    "uv": uv,
    "gust_mph": gustMph,
    "gust_kph": gustKph,
  };
}

class Condition {
  Condition({
    required this.text,
    required this.icon,
    required this.code,
  });

  final String text;
  final String icon;
  final int code;

  Condition copyWith({
    required String text,
    required String icon,
    required int code,
  }) =>
      Condition(
        text: text ,
        icon: icon ,
        code: code ,
      );

  factory Condition.fromRawJson(String str) => Condition.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Condition.fromJson(Map<String, dynamic> json) => Condition(
    text: json["text"],
    icon: json["icon"],
    code: json["code"],
  );

  Map<String, dynamic> toJson() => {
    "text": text,
    "icon": icon,
    "code": code,
  };
}

class Location {
  Location({
    required this.name,
    required this.region,
    required this.country,
    required this.lat,
    required this.lon,
    required this.tzId,
    required this.localtimeEpoch,
    required this.localtime,
  });

  final String name;
  final String region;
  final String country;
  final double lat;
  final double lon;
  final String tzId;
  final int localtimeEpoch;
  final String localtime;

  Location copyWith({
    required String name,
    required String region,
    required String country,
    required double lat,
    required double lon,
    required String tzId,
    required int localtimeEpoch,
    required String localtime,
  }) =>
      Location(
        name: name ,
        region: region ,
        country: country ,
        lat: lat ,
        lon: lon ,
        tzId: tzId ,
        localtimeEpoch: localtimeEpoch ,
        localtime: localtime ,
      );

  factory Location.fromRawJson(String str) => Location.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    name: json["name"],
    region: json["region"],
    country: json["country"],
    lat: json["lat"],
    lon: json["lon"],
    tzId: json["tz_id"],
    localtimeEpoch: json["localtime_epoch"],
    localtime: json["localtime"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "region": region,
    "country": country,
    "lat": lat,
    "lon": lon,
    "tz_id": tzId,
    "localtime_epoch": localtimeEpoch,
    "localtime": localtime,
  };
}