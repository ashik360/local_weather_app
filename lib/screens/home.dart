import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/screens/details.dart';
import 'package:weather_app/screens/seven_days.dart';
import 'package:weather_app/widgets/column_builder.dart';
import 'package:weather_app/widgets/hourly_weather.dart';
import 'package:weather_app/widgets/weather_card.dart';

class HomeScreen extends StatelessWidget {
  static const String path = "HomeScreen";
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List dates = 
    [
    "9 March 2021",
    "10 March 2021",
     "11 March 2021",
      "12 March 2021",
       "13 March 2021",
        "14 March 2021",
         "15 March 2021",
         ];
    final List temps = 
    [
    "23",
    "26",
    "23",
    "22",
    "26",
    "24",
    "25",
         ];
    final List days = 
    [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday",
         ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF1F0FA),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Pasuruan",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text("17.45 PM"),
              SizedBox(
                height: 8,
              ),
              CarouselSlider(
                options: CarouselOptions(height: 300.0),
                items: dates.asMap().entries.map((entry) {
                  int index = entry.key;
                  String date = entry.value;
                  String temp = temps[index];
                  String day = days[index];
                  return Builder(
                    builder: (BuildContext context) {
                      return WeatherCard(
                        temp: temp,
                        date: date,
                        day: day,
                        onTap: () {
                          Navigator.pushNamed(context, DetailsScreen.path);
                        },
                      );
                    },
                  );
                }).toList(),
              ),
              Container(
                color: Color(0xff766CC1).withOpacity(0.35),
                margin: EdgeInsets.only(top: 80),
                child: Column(
                  children: [
                    Transform.translate(
                      offset: Offset(0, -60),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 122,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ColumnBuilder(
                              imageName: "carbon_humidity",
                              value: "75 %",
                              level: "Humidity",
                            ),
                            ColumnBuilder(
                              imageName: "tabler_wind",
                              value: "8 km/h",
                              level: "Wind",
                            ),
                            ColumnBuilder(
                              imageName: "ion_speedometer",
                              value: "1011",
                              level: "Air Pressure",
                            ),
                            ColumnBuilder(
                              imageName: "ic_round-visibility",
                              value: "6 km",
                              level: "Visibility",
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Today",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Row(
                            children: [
                              ElevatedButton(onPressed: (){
                                Navigator.pushNamed(context, SevenDays.path);
                              }, child: Text(
                                "Next 7 Days",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              ),
                              
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 140,
                      margin: EdgeInsets.only(top: 32),
                      child: ListView.builder(
                          // reverse: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: HourlyWeatherCard(
                                onTap: (){
                                  Navigator.pushNamed(context, SevenDays.path);
                                },
                              ),
                            );
                          }),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
