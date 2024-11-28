class weathermodel {
  final String cityname;
  final DateTime time;
  final String icon;
  final double temp;
  final double maxtemp;
  final double mintemp;
  final String weathercondition;

  weathermodel(
      {required this.cityname,
      required this.time,
      required this.icon,
      required this.temp,
      required this.maxtemp,
      required this.mintemp,
      required this.weathercondition});

  factory weathermodel.fromjson(json){
    return weathermodel(
        cityname: json['location']['name'],
        time: DateTime.parse(json['current']['last_updated']),
        icon: json['forecast']['forecastday'][0]['day']['condition']['icon'],
        temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
        maxtemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        mintemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        weathercondition: json['forecast']['forecastday'][0]['day']['condition']['text']
    );
  }
}
