import 'package:flutter/material.dart';

class DailyWeatherListBuilder extends StatelessWidget {
  final bool? hasDivider;
  final String? imageName;
  final String? temp;
  final String? day;
  final String? date;

  const DailyWeatherListBuilder({
    Key? key,
    this.hasDivider,
    this.date,
    this.day,
    this.imageName,
    this.temp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/$imageName.png",
                  scale: 4,
                ),
                Row(
                  children: [
                    Text(
                      "$temp°",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 36,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "$day",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "$date",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            hasDivider == true
                ? Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                    indent: 60,
                    endIndent: 60,
                  )
                : Container(
                    width: 0,
                    height: 0,
                  )
          ],
        ),
      ),
    );
  }
}
