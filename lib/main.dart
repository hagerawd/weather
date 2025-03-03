import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubits/getweather_cubit/getweather_cubit.dart';
import 'package:weather/cubits/getweather_cubit/getweather_states.dart';
import 'package:weather/weather_info.dart';

import 'first_screen.dart';

void main() {
  runApp(weather());
}

class weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getWeatherCubit(),
      child:  Builder(
        builder: (context) => BlocBuilder<getWeatherCubit, weatherState>(
  builder: (context, state) {
    return MaterialApp(
            theme: ThemeData(

            useMaterial3: false,
            primarySwatch: getThemeColor(BlocProvider.of<getWeatherCubit>(context).Weathermodel?.weathercondition)
              ),
              debugShowCheckedModeBanner: false,
              home: firstscreen()
              );
  },
),

      ),
    );
  }
}

  MaterialColor getThemeColor(String? weatherCondition) {
    switch (weatherCondition) {
      case null:
        return Colors.blue;
      case 'Sunny':
      case 'Clear':
        return Colors.orange;
      case 'Partly cloudy':
        return Colors.lightBlue;
      case 'Cloudy':
      case 'Overcast':
        return Colors.grey;
      case 'Mist':
      case 'Fog':
      case 'Freezing fog':
        return Colors.blueGrey;
      case 'Patchy rain possible':
      case 'Patchy light drizzle':
      case 'Light drizzle':
      case 'Patchy light rain':
      case 'Light rain':
      case 'Moderate rain at times':
      case 'Moderate rain':
      case 'Heavy rain at times':
      case 'Heavy rain':
      case 'Light rain shower':
        return Colors.blue;
      case 'Patchy snow possible':
      case 'Light snow':
      case 'Moderate snow':
      case 'Heavy snow':
      case 'Patchy light snow':
      case 'Patchy moderate snow':
      case 'Patchy heavy snow':
      case 'Snow':
        return Colors.lightBlue;
      case 'Thundery outbreaks possible':
      case 'Patchy light rain with thunder':
      case 'Moderate or heavy rain with thunder':
      case 'Patchy light snow with thunder':
      case 'Moderate or heavy snow with thunder':
        return Colors.deepPurple;
      case 'Patchy sleet possible':
      case 'Light sleet':
      case 'Moderate or heavy sleet':
      case 'Light sleet showers':
      case 'Moderate or heavy sleet showers':
      case 'Sleet':
        return Colors.lightBlue;
      case 'Blowing snow':
      case 'Blizzard':
        return Colors.grey;
      case 'Freezing drizzle':
      case 'Light freezing rain':
      case 'Moderate or heavy freezing rain':
      case 'Freezing rain':
        return Colors.cyan;
      case 'Ice pellets':
      case 'Light showers of ice pellets':
      case 'Moderate or heavy showers of ice pellets':
        return Colors.cyan;
      case 'Torrential rain shower':
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }
