
import 'package:flutter/material.dart';
import 'package:weather_app/widgets/daily_weather.dart';

class seven_days_list extends StatelessWidget {
  const seven_days_list({
    Key? key,
    required this.temp,
    required this.day,
    required this.date,
  }) : super(key: key);

  final List temp;
  final List day;
  final List date;
  

  @override
  Widget build(BuildContext context) {
    final List date = 
    [
    "9 March 2021",
    "10 March 2021",
     "11 March 2021",
      "12 March 2021",
       "13 March 2021",
        "14 March 2021",
         "15 March 2021",
         ];
    final List temp = 
    [
    "23",
    "26",
    "23",
    "22",
    "26",
    "24",
    "25",
         ];
    final List day = 
    [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday",
         ];
    return ListView.builder(
        shrinkWrap: true,
        itemCount: date.length,
        itemBuilder: (context, index) {
          return DailyWeatherListBuilder(
            hasDivider: index < date.length ? true : false,
            imageName: "moon_cloud_fast_wind",
            temp: temp[index],
            day: day[index],
            date: date[index],
          );
        });
  }
}
