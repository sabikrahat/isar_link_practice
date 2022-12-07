import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:isar_link_practice/src/modules/isar_link/models/isar_link.model.dart';

import '../../../db/db.dart';

final studentIsarLinkStreamPd =
    StreamProvider.autoDispose((_) => db.studentIsarLinks.watchLazy());

final studentIsarLinkFuturePd =
    FutureProvider.autoDispose<List<StudentIsarLink>>((ref) async {
  ref.watch(studentIsarLinkStreamPd);
  return await db.studentIsarLinks.where().findAll();
});
