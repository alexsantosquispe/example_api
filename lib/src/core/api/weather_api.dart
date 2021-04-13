import 'package:dio/dio.dart';
import 'package:placeholder_api/src/core/api/i_weather_api.dart';
import 'package:placeholder_api/src/core/constants/constants_api.dart';
import 'package:placeholder_api/src/core/models/result_weather.dart';

class WeatherApi implements IWeatherApi {
  WeatherApi();

  Dio dioClient = Dio();

  @override
  Future<ResultWeather> getWeatherInfo() async {
    final url = '$BASE_URL$LATEST_WEATHER';

    try {
      dioClient.options.headers = {
        'x-api-key': API_KEY,
      };
      final result = await dioClient.get(url);
      if (result.statusCode == 200) {
        return ResultWeather.fromJson(result.data);
      } else {
        return ResultWeather.fromJson(result.data);
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
