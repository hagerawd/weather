import 'dart:developer';

import 'package:dio/dio.dart';

import 'weathermodel.dart';

class weatherservice {
  final Dio dio;
  weatherservice(this.dio);

Future<weathermodel> getweather({required String city}) async {
  try {
    Response response  = await dio.get('https://api.weatherapi.com/v1/forecast.json?key=069fe0e9b87544a5a0452231242409&q=$city&days=1');
    weathermodel Weathermodel = weathermodel.fromjson(response.data);
    return Weathermodel;
  } on DioException catch (e) {
   final String errmessage = e.response?.data['error']['message']
       ?? 'opps there was an error , try later';
   throw Exception(errmessage);
  }catch (e){
    log(e.toString());
    throw Exception('opps there was an error , try later ');
  }
}
}

