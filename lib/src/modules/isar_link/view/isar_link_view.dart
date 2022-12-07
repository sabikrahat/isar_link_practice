import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar_link_practice/src/configs/size_config.dart';
import 'package:isar_link_practice/src/modules/isar_link/provider/isar_link_pd.dart';
import 'package:isar_link_practice/src/utils/themes/themes.dart';

import '../../../db/db.dart';
import '../models/isar_link.model.dart';

class IsarLinkView extends ConsumerWidget {
  const IsarLinkView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Isar Link'),
      ),
      body: ref.watch(studentIsarLinkFuturePd).when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => Text(error.toString()),
            data: (data) => ListView.builder(
              itemCount: data.length,
              itemBuilder: (_, index) {
                final student = data[index];
                final teacher = student.teacher.value;
                return Card(
                  child: ExpansionTile(
                    leading: const Icon(Icons.school_outlined),
                    title: Text(student.stdName),
                    subtitle: Text(teacher?.teacherName ?? 'Not Found'),
                    trailing: const Icon(Icons.edit),
                    children: [
                      TextFormField(
                        initialValue: student.stdName,
                        onChanged: (value) => student.stdName = value,
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        initialValue: student.teacher.value?.teacherName,
                        onChanged: (value) =>
                            student.teacher.value?.teacherName = value,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: mainCenter,
                        children: [
                          ElevatedButton(
                            style: roundedButtonStyle,
                            onPressed: () async {
                              await db.writeTxn(() async {
                                await db.studentIsarLinks.delete(student.id!);
                                await db.teacherIsarLinks.delete(teacher!.id!);
                              });
                            },
                            child: const Text('Delete'),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            style: roundedButtonStyle,
                            onPressed: () async {
                              await db.writeTxn(() async {
                                await db.teacherIsarLinks.put(teacher!);
                                await db.studentIsarLinks.put(student);
                              });
                            },
                            child: const Text('Save'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                );
              },
            ),
          ),
      floatingActionButton: const ModifyWidgets(),
    );
  }
}

class ModifyWidgets extends StatelessWidget {
  const ModifyWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: null,
      tooltip: 'Add Student',
      onPressed: () async {
        final teacher = TeacherIsarLink()
          ..teacherName = 'Teacher ${DateTime.now().microsecondsSinceEpoch}}';

        final student = StudentIsarLink()
          ..stdName = 'Student ${DateTime.now().microsecondsSinceEpoch}}'
          ..teacher.value = teacher;

        await db.writeTxn(() async {
          await db.studentIsarLinks.put(student);
          await db.teacherIsarLinks.put(teacher);
          await student.teacher.save();
        });
      },
      child: const Icon(Icons.school_outlined),
    );
  }
}
