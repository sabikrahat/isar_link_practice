import 'package:flutter/material.dart' show BuildContext, Key, Widget;
import 'package:flutter_gen/gen_l10n/app_localizations.dart'
    show AppLocalizations;
import 'package:flutter_riverpod/flutter_riverpod.dart'
    show ConsumerWidget, WidgetRef;

import '../../../configs/size_config.dart' show ScreenSize;
import '../../../localization/loalization.dart' show t;
import '../../home/view/home_view.dart';

class AppRouter extends ConsumerWidget {
  AppRouter({Key? key}) : super(key: key);

  final ScreenSize _sizeConfig = ScreenSize();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _sizeConfig.init(context);
    t = AppLocalizations.of(context);
    // Check if Auth is needed
    return const Home();
  }
}
