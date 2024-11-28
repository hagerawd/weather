import 'package:flutter/material.dart';
import 'package:weather/main.dart';
import 'package:weather/weathermodel.dart';


class WeatherInfoBody extends StatelessWidget {
   WeatherInfoBody({super.key, required this.Weathermodel});
  weathermodel Weathermodel ;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,


    body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              getThemeColor(Weathermodel.weathercondition),
              getThemeColor(Weathermodel.weathercondition)[300]!,
              getThemeColor(Weathermodel.weathercondition)[50]!,
            ],
          )
      ),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
                Weathermodel.cityname,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),

               Text(
                'updated at ${Weathermodel.time.hour} : ${Weathermodel.time.minute}',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 32,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Image.network('https:${Weathermodel.icon}'),
                  Text(
                    "${Weathermodel.temp}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                   Column(
                    children: [
                      Text(
                        'Maxtemp : '+'${Weathermodel.maxtemp.round()}',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Mintemp : '+'${Weathermodel.mintemp.round()}',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
               Text(
                Weathermodel.weathercondition,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
            ],
          ),
        ),
    ),
    );
  }
}