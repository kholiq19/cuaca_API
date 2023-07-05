class WeatherResponseModel {
  WeatherResponseModel({
    this.temperature,
    this.wind,
    this.description,
    this.forecast,});
  WeatherResponseModel.fromJson(dynamic json) {
    temperature = json['temperature'];
    wind = json['wind'];
    description = json['description'];
    if (json['forecast'] != null) {
      forecast = [];
      json['forecast'].forEach((v) {
        forecast?.add(Forecast.fromJson(v));
      });
    }
  }
  String? temperature;
  String? wind;
  String? description;
  List<Forecast>? forecast;
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['temperature'] = temperature;
    map['wind'] = wind;
    map['description'] = description;
    if (forecast != null) {
      map['forecast'] = forecast?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
class Forecast {
  Forecast({
    this.day,
    this.temperature,
    this.wind,});
  Forecast.fromJson(dynamic json) {
    day = json['day'];
    temperature = json['temperature'];
    wind = json['wind'];
  }
  String? day;
  String? temperature;
  String? wind;
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = day;
    map['temperature'] = temperature;
    map['wind'] = wind;
    return map;
  }
}