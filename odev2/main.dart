import 'course_card.dart';
import 'courses.dart';
import 'sign_in.dart';
import 'students.dart';
import 'teachers.dart';
import 'user.dart';

void main() {
  User user1 =
      new User(name: "Emrah", lastName: "IŞIK", email: "emrah@outlook.com");

  user1.displayInfo();

  Teacher teacher1 = new Teacher(
      name: "Halit",
      lastName: "KALAYCI",
      email: "halit@kodlamaoi",
      branch: "python");

  teacher1.displayInfo();

  Student student1 = new Student(
      name: "Emrah",
      lastName: "IŞIK",
      email: "emrah@outlook.com",
      course: "flutter");
  student1.displayInfo();

  Courses course1 = new Courses(
      courseName: "Flutter",
      courseTime: "6 Mounth",
      courseTeacher: "Halit KAYALCI");

  course1.InfoCourse();

  CourseCard courseCard1 = new CourseCard(
      courseName: "Dart",
      courseTeacher: "Halit KALAYCI",
      courseTime: "8 Mounth",
      courseImage: "https://www.google.com",
      courseContent: "Dart hakkında içerik bilgisi.",
      coursePrice: "ücretsiz");
  courseCard1.InfoCourse();

  SignIN signin = new SignIN(
      name: "Emrah",
      lastName: "IŞIK",
      email: "ssemrah@outlook.com",
      Password: "password");

  signin.displayInfo();
}
