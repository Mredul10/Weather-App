import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model.dart';

class WeatherServices {
  final String apiKey = 'a87e681d2e9cb4d197db4922764028a3';

  Future<Weather> fetchWeather(String cityName) async {
    final url = Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return Weather.fromjson(json.decode(response.body));
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
