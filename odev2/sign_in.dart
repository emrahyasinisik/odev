import 'user.dart';

class SignIN extends User {
  SignIN(
      {required super.name,
      required super.lastName,
      required super.email,
      required this.Password}) {}
  late String Password;
}
