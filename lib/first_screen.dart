import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubits/getweather_cubit/getweather_cubit.dart';
import 'package:weather/cubits/getweather_cubit/getweather_states.dart';
import 'package:weather/noweatherscreen.dart';
import 'package:weather/searchscreen.dart';
import 'package:weather/weather_info.dart';
class firstscreen extends StatelessWidget {
  const firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        appBar: AppBar(title: Text('Weather App',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)
          ,
          actions: [IconButton(
            icon: Icon( Icons.search_rounded, color: Colors.white,size: 33,),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return searchscreen();
              }));
            },
          )
          ],
        ),



        body: BlocBuilder<getWeatherCubit,weatherState>
        (builder: (context,state){
          if(state is noWeatherState){
            return noweatherscreen();
          } else if(state is weatherLoadedState){
            return WeatherInfoBody(Weathermodel: state.Weathermodel,);
          }else {
            return Text('oops there was an error');
          }
      })

    );
  }
}
