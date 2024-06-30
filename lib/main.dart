import 'package:flutter/material.dart';
import 'package:weather_app/screens/details.dart';
import 'package:weather_app/screens/home.dart';
import 'package:weather_app/screens/seven_days.dart';
import 'package:weather_app/widgets/weather_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.path,
      routes: {
        
        HomeScreen.path: (context) => HomeScreen(),
        DetailsScreen.path: (context) => DetailsScreen(),
        // WeatherCard.path: (context) => WeatherCard(date: '${date}', temp: '', day: '',),
        SevenDays.path: (context) => SevenDays(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomeScreen(),
    );
  }
}
