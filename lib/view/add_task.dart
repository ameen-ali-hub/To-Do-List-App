// ignore_for_file: prefer_const_constructors, sort_child_properties_last, file_names, sized_box_for_whitespace, avoid_print, unused_field

import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todoapp/model/task.dart';
import 'package:todoapp/view/home.dart';
import 'package:todoapp/view/init/colors.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  // ////////////////////////////////////////////////////////
  final _titlecontroller = TextEditingController();
  final _descreptioncontroller = TextEditingController();
  final _taskFormKey = GlobalKey<FormState>();

  ////////////////////////////////////////////////////////
  late final Box box;
  ///////////////////////////////////////////////////////

  String? _fieldvalidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Field is required ";
    }
    return null;
  }

  _addtask() async {
    Task newtask = Task(
      title: _titlecontroller.text,
      descreption: _descreptioncontroller.text,
    );
    box.add(newtask);
    // print("the data is adedd ");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    box = Hive.box('TasksBox');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: MaterialButton(
          onPressed: () {
            if (_taskFormKey.currentState!.validate()) {
              _addtask();
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Home(),
              ));
            }
          },
          child: Center(
            child: Text(
              "Create New Task ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: pirble,
        ),
        margin: EdgeInsets.symmetric(horizontal: 70, vertical: 25),
        height: 50,
      ),
      appBar: AppBar(
        title: Text(  
          "Add Task ",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30 , color: const Color.fromARGB(255, 255, 255, 255)),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        // foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.black,
      body: Form(
        key: _taskFormKey,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "Task Title ",
                    style: TextStyle(
                      fontSize: 20,
                      color: wite,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    validator: _fieldvalidator,
                    controller: _titlecontroller,
                    style: TextStyle(color: Colors.white),
                    // textAlign: TextAlign.center,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Add Task Name ",
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.add),
                      // prefixStyle: TextStyle(),
                      prefixIconColor: Colors.white,
                      filled: true,
                      fillColor: Color.fromARGB(255, 22, 22, 22),
                    ),
                  ),
                  height: 50,
                ),
                SizedBox(
                  height: 20,
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
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 420,
                  // color: witepurble,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0, left: 20),
                        child: Text(
                          "The Date For This Task ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        margin: EdgeInsets.all(10),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          // textAlign: TextAlign.center,
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Your Task Date  ",
                            hintStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(Icons.calendar_month),
                            // prefixStyle: TextStyle(),
                            prefixIconColor: Colors.white,
                            filled: true,
                            fillColor: Color.fromARGB(255, 22, 22, 22),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Start Time",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 22, 22, 22),
                                ),
                                margin: EdgeInsets.symmetric(vertical: 20),
                                height: 40,
                                width: 150,
                                child: TextField(
                                  keyboardType: TextInputType.datetime,
                                  style: TextStyle(color: Colors.white),
                                  // textAlign: TextAlign.center,
                                  cursorColor: Colors.white,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      borderSide: BorderSide.none,
                                    ),
                                    icon: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Icon(
                                        Icons.timer,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                    hintStyle: TextStyle(color: Colors.white),
                                    // prefixIcon: Icon(Icons.add),
                                    // prefixStyle: TextStyle(),
                                    prefixIconColor: Colors.white,
                                    filled: true,
                                    fillColor: Color.fromARGB(255, 22, 22, 22),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "End Time",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                child: TextField(
                                  keyboardType: TextInputType.datetime,
                                  style: TextStyle(color: Colors.white),
                                  // textAlign: TextAlign.center,
                                  cursorColor: Colors.white,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      borderSide: BorderSide.none,
                                    ),
                                    icon: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Icon(
                                        Icons.timer,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                    // hintText: "Add Task Name ",
                                    hintStyle: TextStyle(color: Colors.white),
                                    // prefixIcon: Icon(Icons.add),
                                    // prefixStyle: TextStyle(),
                                    prefixIconColor: Colors.white,
                                    filled: true,
                                    fillColor: Color.fromARGB(255, 22, 22, 22),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 22, 22, 22),
                                ),
                                margin: EdgeInsets.symmetric(vertical: 20),
                                height: 40,
                                width: 150,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 20),
                        child: Text(
                          "Description",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        // padding: EdgeInsets.only(top: 10),
                        child: TextFormField(
                          controller: _descreptioncontroller,
                          validator: _fieldvalidator,
                          minLines: 1,
                          maxLines: 6,
                          style: TextStyle(color: Colors.white),
                          // textAlign: TextAlign.center,
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Add Description Here  ",
                            hintStyle: TextStyle(color: Colors.white),
                            // prefixIcon: Icon(Icons.add),
                            // prefixStyle: TextStyle(),
                            prefixIconColor: Colors.white,
                            filled: true,
                            fillColor: Color.fromARGB(255, 22, 22, 22),
                          ),
                        ),
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
