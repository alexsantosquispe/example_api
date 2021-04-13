import 'package:placeholder_api/src/core/models/weather.dart';

class ResultWeather {
  final String message;
  final Weather data;

  ResultWeather({this.message, this.data});

  factory ResultWeather.fromJson(Map<String, dynamic> json) {
    return ResultWeather(
      message: json['message'],
      data: json['data'] != null ? Weather.fromJson(json['data']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}
