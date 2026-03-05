import 'package:task_1/data/course.dart';

class Student {
  String name;
  int age;
  Course course;

  Student({required this.name, required this.age, required this.course});

  String getStudentName() {
    return name;
  }
  
}
