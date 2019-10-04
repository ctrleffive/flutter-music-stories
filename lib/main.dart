/// Always sort imports like below format
///
/// 1. Dart packages (eg. dart.io)
/// 2. Flutter packages (eg. material)
/// 3. Third party packages (eg. google_maps)
/// 4. Constants (eg. keys.dart)
/// 5. Providers (eg. location_provider)
/// 6. Services (eg. location_service)
/// 7. Layouts (eg. loader_wrap.dart)
/// 8. Components (eg. custom_button.dart)
/// 9. Pages (eg. home.dart)

import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

import 'package:catcher/catcher_plugin.dart';

import 'package:music_stories/src/constants/keys.dart';

import 'package:music_stories/src/app.dart';

void main() {
  // I don't like the way catcher showing error logs in the console. 😐

  if (kReleaseMode) {
    Catcher(
      App(),
      releaseConfig: CatcherOptions(
        DialogReportMode(),
        [SentryHandler(KeysConstant.sentryDsn)],
      ),
    );
  } else {
    runApp(App());
  }
}
