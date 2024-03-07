import 'user.dart';

class Student extends User {
  Student({required super.name, required super.lastName, required super.email, required this.course}) {}

  late String course;
}
