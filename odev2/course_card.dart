import 'courses.dart';

class CourseCard extends Courses {
  CourseCard(
      {required super.courseName,
      required super.courseTeacher,
      required super.courseTime,
      required this.courseImage,
      required this.courseContent,
      required this.coursePrice});

  late String courseImage;
  late String courseContent;
  late String coursePrice;
}
