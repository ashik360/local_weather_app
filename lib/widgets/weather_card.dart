import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  static const String path = "WeatherCard";
  final VoidCallback? onTap;
  final String temp;
  final String date;
  final String day;

  const WeatherCard({
    this.onTap,
    required this.date,
    required this.temp,
    required this.day,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 238,
            height: 580,
          ),
          Positioned(
            top: 30,
            child: Container(
              width: 245,
              height: 260,
              padding: EdgeInsets.only(bottom: 25),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xff4B3EAE),
                    Color(0xff766CC1),
                    Color(0xff4B3EAE),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  // boxShadow: [
                  //     BoxShadow(
                  //       color: Color(0xff4B3EAE).withOpacity(0.5),
                  //       spreadRadius: 7,
                  //       blurRadius: 25,
                  //       offset: Offset(5, 5), // changes position of shadow
                  //     ),
                  // ],
                  borderRadius: BorderRadius.circular(40)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/moon_cloud_fast_wind.png",
                    scale: 2.2,
                  ),
                  Text(
                    " ${temp}°",
                    style: TextStyle(
                        fontSize: 72,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Moon Cloud Fast Wind",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 15,
            child: Container(
              height: 34,
              width: 140,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Center(
                child: Text(
                  "${day}, ${date}",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class WeatherCardList extends StatelessWidget {
  // Example lists of data
  final List<String> dates = [
    "9 March 2021",
    "10 March 2021",
    "11 March 2021",
    "12 March 2021",
    "13 March 2021",
    "14 March 2021",
    "15 March 2021",
  ];
  final List<String> temps = [
    "23",
    "26",
    "23",
    "22",
    "26",
    "24",
    "25",
  ];
  final List<String> days = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dates.length,
      itemBuilder: (context, index) {
        return WeatherCard(
          date: dates[index],
          temp: temps[index],
          day: days[index],
        );
      },
    );
  }
}