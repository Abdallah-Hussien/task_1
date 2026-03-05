import 'package:task_1/Inheritance/person.dart';

class Manager extends Person {
  Manager({required super.name, required super.age});

  void manageing() {
    print("Managing.....");
  }
}
