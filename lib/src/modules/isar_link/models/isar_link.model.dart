import 'package:isar/isar.dart';

part 'isar_link.model.g.dart';

@collection
class TeacherIsarLink {
  Id? id;

  late String teacherName;
}

@collection
class StudentIsarLink {
  Id? id;

  late String stdName;

  final teacher = IsarLink<TeacherIsarLink>();
}
