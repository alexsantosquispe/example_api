import 'package:placeholder_api/src/core/models/models.dart';

abstract class IWeatherApi {
  /// Gets the weather data for the current location
  Future<ResultWeather> getWeatherInfo();
}
