import 'package:flutter/foundation.dart' show kReleaseMode;
import 'package:isar/isar.dart' show Isar;
import 'package:isar_link_practice/src/modules/isar_link/models/isar_link.model.dart';

import '../modules/setting/model/setting_model.dart';
import '../utils/paths/paths.dart' show appDBDir;

late final Isar db;

Future<void> openAppDB() async => db = await Isar.open(
      [AppConfigSchema, TeacherIsarLinkSchema, StudentIsarLinkSchema],
      directory: appDBDir.path,
      inspector: !kReleaseMode,
    );
