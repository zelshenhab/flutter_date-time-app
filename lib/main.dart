// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import "dart:async";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dateapp(),
    );
  }
}

class Dateapp extends StatefulWidget {
  const Dateapp({super.key});

  @override
  State<Dateapp> createState() => _DateappState();
}

class _DateappState extends State<Dateapp> {
  // Times
  String hour = "";
  String min = "";
  String sec = "";
  // Dates
  String year = "";
  String month = "";
  String dayNum = "";
  String weekDay = "";
  changeEverySec() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        // Times
        hour = DateTime.now().hour.toString();
        min = DateTime.now().minute.toString();
        sec = DateTime.now().second.toString();

        // Dates
        year = DateTime.now().year.toString();
        month = DateTime.now().month.toString();
        switch (month) {
          case "1":
            month = "January";
            break;
          case "2":
            month = "February";
            break;
          case "3":
            month = "March";
            break;
          case "4":
            month = "April";
            break;
          case "5":
            month = "May";
            break;
          case "6":
            month = "June";
            break;
          case "7":
            month = "July";
            break;
          case "8":
            month = "August";
            break;
          case "9":
            month = "September";
            break;
          case "10":
            month = "October";
            break;
          case "11":
            month = "November";
            break;
          case "12":
            month = "December";
            break;
        }
        dayNum = DateTime.now().day.toString();
        weekDay = DateTime.now().weekday.toString();
        switch (weekDay) {
          case "1":
            weekDay = "Monday";
            break;
          case "2":
            weekDay = "Tuesday";
            break;
          case "3":
            weekDay = "Wednesday";
            break;
          case "4":
            weekDay = "Thusrday";
            break;
          case "5":
            weekDay = "Friday";
            break;
          case "6":
            weekDay = "Saturday";
            break;
          case "7":
            weekDay = "Sunday";
            break;
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    changeEverySec();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 40, 43),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        title: Text(
          "Time & Date App",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Today's Date is $weekDay",
              style: TextStyle(fontSize: 27, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "$month $dayNum, $year",
              style: TextStyle(fontSize: 27, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "${hour.padLeft(2, "0")} : ${min.padLeft(2, "0")} : ${sec.padLeft(2, "0")}",
              style: TextStyle(fontSize: 27, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
