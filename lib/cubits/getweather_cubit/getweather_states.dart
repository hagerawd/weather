import 'package:weather/weathermodel.dart';

class weatherState {}

class noWeatherState extends weatherState {}

class weatherLoadedState extends weatherState{
  final weathermodel Weathermodel;

  weatherLoadedState(this.Weathermodel);
}

class weatherFailureState extends weatherState{}