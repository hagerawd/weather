import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubits/getweather_cubit/getweather_states.dart';
import 'package:weather/weathermodel.dart';
import 'package:weather/weatherservice.dart';

class getWeatherCubit extends Cubit<weatherState> {
  getWeatherCubit() : super(noWeatherState());
    weathermodel? Weathermodel;
  getWeather ({required String cityName}) async{
       try {
          Weathermodel =  await weatherservice(Dio()).getweather(city: cityName);
         emit(weatherLoadedState(Weathermodel!));
       }   catch (e) {
         emit(weatherFailureState());
       }
  }

}