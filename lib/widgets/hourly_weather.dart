import 'package:flutter/material.dart';

class HourlyWeatherCard extends StatelessWidget {
  static const String path = "HourlyWeatherCard";
  final VoidCallback? onTap;
  const HourlyWeatherCard({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 92,
        height: 132,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff4B3EAE),
              Color(0xff766CC1),
              Color(0xff4B3EAE),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(25)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "06:00 AM",
              style: TextStyle(
                  fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white),
            ),
            Image.asset(
              "assets/moon_cloud_fast_wind.png",
              scale: 4,
            ),
            Text(
              "23°",
              style: TextStyle(
                  fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
