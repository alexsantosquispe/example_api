import 'package:flutter/material.dart';
import 'package:placeholder_api/src/core/api/weather_api.dart';
import 'package:placeholder_api/src/core/models/models.dart';
import 'package:placeholder_api/src/ui/constants/base_colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ResultWeather weatherResult;
  WeatherApi api = WeatherApi();

  @override
  void initState() {
    super.initState();
  }

  Future<ResultWeather> _fetchData() async {
    try {
      weatherResult = await api.getWeatherInfo();
      return weatherResult;
    } catch (e) {
      print(e);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: FutureBuilder<ResultWeather>(
            future: _fetchData(),
            builder: ((context, snapshot) {
              dynamic result = snapshot.data ?? null;
              if (result != null && result.data != null) {
                Weather weather = result.data;
                return Text(
                  '${weather.temperature}',
                  style: TextStyle(fontSize: 28),
                );
              } else {
                return CircularProgressIndicator(
                  backgroundColor: primary,
                );
              }
            }),
          ),
        ),
      ),
    );
  }
}
