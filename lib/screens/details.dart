import 'package:flutter/material.dart';
import 'package:weather_app/widgets/daily_weather.dart';
import 'package:weather_app/widgets/seven_days_list.dart';

class DetailsScreen extends StatelessWidget {
  static const String path = "DetailsScreen";
  const DetailsScreen({Key? key}) : super(key: key);

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
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff4B3EAE),
              Color(0xff766CC1),
              Color(0xff4B3EAE),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Today’s Weather",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Sunday, 8 March 2021",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff766CC1),
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(width: 2, color: Colors.white)),
                child: Row(
                  children: [
                    Image.asset("assets/moon_cloud_fast_wind.png"),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "23°",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 72,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Moon Cloud Fast Wind",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Transform.translate(
                    offset: Offset(0, -20),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 100,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xffD1CDEA),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Future Weather",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        seven_days_list(temp: temp, day: day, date: date),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
