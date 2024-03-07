import 'user.dart';

class Teacher extends User {
  Teacher({
    required super.name,
    required super.lastName,
    required super.email,
    required this.branch,
  });
  late String? branch;
}
