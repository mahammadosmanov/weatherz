class Weather {
  final String cityname;
  final double temprature;
  final String mainCondition;

  Weather(
      {required this.cityname,
      required this.temprature,
      required this.mainCondition});

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityname: json['name'],
      temprature: json['main']['temp'].toDouble(),
      mainCondition: json['weather'][0]['main'],
    );
  }
}
