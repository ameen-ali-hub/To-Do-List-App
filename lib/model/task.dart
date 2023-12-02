// the thinks we need to entered to the database
import 'package:hive_flutter/adapters.dart';
part 'task.g.dart';

@HiveType(typeId: 1)
class Task {
  @HiveField(0)
  String title;

  @HiveField(1)
  String descreption;

  Task({required this.title, required this.descreption});
}
