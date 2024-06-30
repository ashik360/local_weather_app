import 'package:flutter/material.dart';
import 'package:weather_app/widgets/daily_weather.dart';
import 'package:weather_app/widgets/seven_days_list.dart';

class SevenDays extends StatelessWidget {
  static const String path = "SevenDays";
  const SevenDays({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List date = 
    [
    "9 March 20221",
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
    return SingleChildScrollView(
      child: Material(
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.white30,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios,
                  
                  ),
                  color: Color(0xff4B3EAE),
                  hoverColor: Color(0xff4B3EAE),
                  ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 60,
                width: double.infinity,
                
                decoration: BoxDecoration(
                  color: Color(0xff766CC1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Next Seven Days",
                    style: TextStyle(
                        color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            seven_days_list(temp: temp, day: day, date: date),
          ],
        ),
      ),
    );
  }
}
