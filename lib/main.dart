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

import 'package:catcher/catcher_plugin.dart';

import 'package:music_stories/src/constants/keys.dart';

import 'package:music_stories/src/app.dart';

void main() {
  // I don't like the way catcher showing error logs in the console. 😐
  bool isDebug = false;
  // Assert works only in debug mode. So if it is running in production,
  // the `isDebug` variable will be false and excecute catcher code.
  assert(isDebug = true);
  
  if (isDebug) {
    runApp(App());
  } else {
    Catcher(
      App(),
      releaseConfig: CatcherOptions(
        DialogReportMode(),
        [SentryHandler(KeysConstant.sentryDsn)],
      ),
    );
  }
}
