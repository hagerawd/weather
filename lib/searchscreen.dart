import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubits/getweather_cubit/getweather_cubit.dart';
import 'package:weather/weathermodel.dart';
import 'package:weather/weatherservice.dart';
class searchscreen extends StatelessWidget {
   searchscreen({super.key});
  String? city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search a City',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),
      ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 150,horizontal: 20),
        child: TextFormField(
          onFieldSubmitted: (value)  async{
            var getweather = BlocProvider.of<getWeatherCubit>(context);
            getweather.getWeather(cityName: value);
            Navigator.of(context).pop();
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 32
            ),
            suffixIcon: Icon(Icons.search_outlined),
              border: OutlineInputBorder(

            ),
              hintText: 'Enter City Name',
          labelText: "Search"),
        ),
      ) ,
    );
  }
}
