// ignore_for_file: sort_child_properties_last, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, camel_case_types

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todoapp/view/add_task.dart';
import 'package:todoapp/view/home.dart';
import 'package:todoapp/view/init/colors.dart';

class calendar extends StatefulWidget {
  const calendar({super.key});

  @override
  State<calendar> createState() => _calendarState();
}

class _calendarState extends State<calendar> {
  DateTime today = DateTime.now();
  void _ondayselected(DateTime day, DateTime foucosday) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 60, 60, 60),
              borderRadius: BorderRadius.circular(20)),
          margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // home
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.home,
                    color: wite,
                  ),
                ),
              ),
              FloatingActionButton(
                backgroundColor: pirble,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => AddTask(),
                    ),
                  );
                },
                child: Icon(Icons.add , color: Colors.white,),
              ),
              // add task
              //  calendar
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => calendar(),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.calendar_month,
                    color: wite,
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            Center(
                child: Container(
              // color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  SafeArea(
                    child: Container(
                      width: double.infinity,
                      // color: Colors.green,
                      child: TableCalendar(
                        selectedDayPredicate: (day) => isSameDay(day, today),
                        onDaySelected: _ondayselected,
                        calendarStyle: CalendarStyle(
                          selectedDecoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: yeolo,
                          ),
                          todayDecoration: BoxDecoration(
                            color: pirble,
                            shape: BoxShape.circle,
                          ),
                          todayTextStyle: TextStyle(
                            // fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          cellAlignment: Alignment.center,
                          selectedTextStyle: TextStyle(),
                          defaultTextStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        calendarFormat: CalendarFormat.month,
                        headerStyle: HeaderStyle(
                            leftChevronIcon: Icon(
                              Icons.chevron_left,
                              size: 40,
                              color: pirble,
                            ),
                            rightChevronIcon: Icon(
                              Icons.chevron_right,
                              size: 40,
                              color: pirble,
                            ),
                            formatButtonVisible: false,
                            titleCentered: true,
                            titleTextStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white,
                            )),
                        availableGestures: AvailableGestures.all,
                        firstDay: DateTime.utc(2010, 10, 16),
                        lastDay: DateTime.utc(2030, 3, 14),
                        focusedDay: DateTime.now(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "29 October 2023  : ",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    // padding: EdgeInsets.all(1),
                    child: Center(
                      child: ListTile(
                        titleTextStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        title: Text("Go To Gym "),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "1:50 PM ",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        trailing: Icon(
                          color: Colors.white,
                          size: 30,
                          Icons.more_vert,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: witepurble,
                        borderRadius: BorderRadius.circular(20)),
                    height: 60,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 10,
                    ),
                  ),
                  Container(
                    child: Center(
                      child: ListTile(
                        titleTextStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        title: Text("Call My Mom "),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "10:00 AM",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        trailing: Icon(
                          color: Colors.white,
                          size: 30,
                          Icons.more_vert,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: yeolo, borderRadius: BorderRadius.circular(20)),
                    height: 60,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 10,
                    ),
                  ),
                  Container(
                    child: ListTile(
                      titleTextStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      title: Text("Work Out "),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "8:30 AM To 4:00 PM ",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      trailing: Icon(
                        color: Colors.white,
                        size: 30,
                        Icons.more_vert,
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: greens, borderRadius: BorderRadius.circular(20)),
                    height: 60,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 10,
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
