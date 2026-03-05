import 'package:task_1/Inheritance/person.dart';

class Employee extends Person {
  String department;
  Employee({
    required this.department,
    required super.name,
    required super.age,
  });
}