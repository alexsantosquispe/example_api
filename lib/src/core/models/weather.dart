class Weather {
  final int time;
  final double temperature;
  final double apparentTemperature;
  final double dewPoint;
  final double humidity;
  final double pressure;
  final double windSpeed;
  final double windGust;
  final int windBearing;
  final double cloudCover;
  final double visibility;
  final double ozone;
  final double lat;
  final double lng;

  Weather(
      {this.time,
      this.temperature,
      this.apparentTemperature,
      this.dewPoint,
      this.humidity,
      this.pressure,
      this.windSpeed,
      this.windGust,
      this.windBearing,
      this.cloudCover,
      this.visibility,
      this.ozone,
      this.lat,
      this.lng});

  factory Weather.fromJson(Map<String, dynamic> json) {
    try {
      final result = Weather(
          time: json['time'],
          temperature: json['temperature'],
          apparentTemperature: json['apparentTemperature'],
          dewPoint: json['dewPoint'],
          humidity: json['humidity'],
          pressure: json['pressure'],
          windSpeed: json['windSpeed'],
          windGust: json['windGust'],
          windBearing: json['windBearing'],
          cloudCover: json['cloudCover'],
          visibility: json['visibility'],
          ozone: json['ozone'],
          lat: json['lat'],
          lng: json['lng']);
      return result;
    } catch (e) {
      return null;
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this.time;
    data['temperature'] = this.temperature;
    data['apparentTemperature'] = this.apparentTemperature;
    data['dewPoint'] = this.dewPoint;
    data['humidity'] = this.humidity;
    data['pressure'] = this.pressure;
    data['windSpeed'] = this.windSpeed;
    data['windGust'] = this.windGust;
    data['windBearing'] = this.windBearing;
    data['cloudCover'] = this.cloudCover;
    data['visibility'] = this.visibility;
    data['ozone'] = this.ozone;
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    return data;
  }
}
