class User {
  User({required this.name, required this.lastName, required this.email}) {}

  String name;
  String lastName;
  String email;

  void displayInfo() {
    print("$name $lastName - $email");
  }
}
