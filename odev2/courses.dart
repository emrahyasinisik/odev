class Courses {
  Courses(
      {required this.courseName,
      required this.courseTime,
      required this.courseTeacher}) {}
  late String courseName;
  late String courseTime;
  late String courseTeacher;

  void InfoCourse() {
    print("$courseName $courseTime - $courseTeacher");
  }
}
