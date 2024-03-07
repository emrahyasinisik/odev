import 'user.dart';

class SignUp extends User {
  SignUp({required super.name, required super.lastName, required super.email, required this.Password}) {}
  late String Password;
}
