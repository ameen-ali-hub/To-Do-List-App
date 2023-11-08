// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/Add_Task.dart';
import 'package:todoapp/backend/Model.dart';
import 'package:todoapp/calendar.dart';
import 'package:todoapp/colors.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ));
            },
            icon: Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: pirble,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => AddTask()));
              },
              icon: Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => calendar()));
            },
            icon: Icon(
              Icons.calendar_month_outlined,
              size: 30,
              color: Colors.white,
            ),
          ),
        ]),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: const Color.fromARGB(255, 60, 60, 60),
        ),
        margin: EdgeInsets.symmetric(horizontal: 70, vertical: 25),
        height: 50,
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 80,
                  width: double.infinity,
                  child: ListTile(
                    textColor: Colors.white,
                    trailing: IconButton(
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    title: Consumer<Model>(
                      builder: (context, model, child) {
                        return Text(
                          model.Title,
                          style: TextStyle(fontSize: 20),
                        );
                      },
                    ),
                    subtitle: Text(
                      "Have A Good Day",
                      style: TextStyle(fontSize: 10),
                    ),
                    leading: Container(
                      child: Center(
                          child: Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.white,
                      )),
                      width: 57,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: pirble,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Search Task",
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.search),
                      prefixIconColor: Colors.white,
                      filled: true,
                      fillColor: const Color.fromARGB(255, 60, 60, 60),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Tasks For To Day",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Center(
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text(
                              "All",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 60, 60, 60),
                        ),
                        height: 40,
                        width: 80,
                      ),
                      Container(
                        child: Center(
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text(
                              "Work",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 60, 60, 60),
                        ),
                        height: 40,
                        width: 80,
                      ),
                      Container(
                        child: Center(
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text(
                              "Personal",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 60, 60, 60),
                        ),
                        height: 40,
                        width: 100,
                      ),
                      Container(
                        child: Center(
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text(
                              "Family",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: pirble,
                        ),
                        height: 40,
                        width: 80,
                      ),
                      Container(
                        child: Center(
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text(
                              "Study",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 60, 60, 60),
                        ),
                        height: 40,
                        width: 80,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 350,
                  width: double.infinity,
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 60, 60, 60),
                        ),
                        child: ListTile(
                          textColor: Colors.white,
                          title: Text(
                            "Task One ",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Row(
                            children: [
                              Icon(
                                Icons.timelapse_sharp,
                                color: Colors.white,
                                size: 20,
                              ),
                              Text(
                                "  10 : 20 pm To Do The Task",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.settings,
                              color: witepurble,
                              size: 25,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// colors
