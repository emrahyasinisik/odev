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
//Const başlangıçta değer almak zorundadır.
//final program başladığında değer
//enum isimlendirilmiş numaralandırılmış 1 için bu 2 için bu demektir.  "sizin verdiğiniz isimlerle göstermek"