// import 'package:flutter/material.dart';
// ignore_for_file: file_names

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

Box? mybox;
Future<Box> openbox(String boxname) async {
  if (!!Hive.isBoxOpen(boxname)) {
    Hive.init((await getApplicationDocumentsDirectory()).path);
  }
  return Hive.openBox(boxname);
}
