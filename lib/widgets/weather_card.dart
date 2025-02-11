import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/utility/app_color.dart';
import 'package:weather_app/utility/text_style.dart';

class WeatherCard extends StatelessWidget {
  final Weather weather;
  const WeatherCard({super.key, required this.weather});

  String formatTime(int timestamp) {
    final date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    return DateFormat('hh:mm a').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(16),
          // decoration: const BoxDecoration(
          //   gradient: AppColor.primaryGradient,
          //   borderRadius: BorderRadius.all(Radius.circular(15))
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _animation(),
              _cityName(),
              _temperature(),
              const SizedBox(height: 10),
              _description(),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [_Humidity(), _Wind()],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [_Sunrise(), _Sunset()],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _animation() {
    return Lottie.asset(
      weather.description.contains('rain')
          ? 'assets/rainy.json'
          : weather.description.contains('clear')
          ? 'assets/sunny.json'
          : weather.description.contains('thunder')
          ? 'assets/thunder.json'
          : 'assets/cloud.json',
      height: 200,
      width: 200,
    );
  }

  Widget _cityName() {
    return Text(weather.cityName, style: AppTextStyle.cityName);
  }

  Widget _temperature() {
    return Text(
      '${weather.temperature.toStringAsFixed(1)}°C',
      style: AppTextStyle.temperature,
    );
  }

  Widget _description() {
    return Text(weather.description, style: AppTextStyle.allDescription);
  }

  Widget _Humidity() {
    return Text(
      'Humidity: ${weather.humidity}%',
      style: AppTextStyle.allDescription,
    );
  }

  Widget _Wind() {
    return Text(
      'Wind: ${weather.windSpeed} m/s',
      style: AppTextStyle.allDescription,
    );
  }

  Widget _Sunrise() {
    return Column(
      children: [
        const Icon(Icons.wb_sunny_outlined, color: Colors.blue),
        Text('Sunrise', style: AppTextStyle.allDescription),
        Text(formatTime(weather.sunrise), style: AppTextStyle.allDescription),
      ],
    );
  }

  Widget _Sunset() {
    return Column(
      children: [
        const Icon(Icons.nights_stay_outlined, color: Colors.blue),
        Text('Sunset', style: AppTextStyle.allDescription),
        Text(formatTime(weather.sunset), style: AppTextStyle.allDescription),
      ],
    );
  }
}
