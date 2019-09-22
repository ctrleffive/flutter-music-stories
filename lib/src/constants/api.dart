/// ### API Strings.
///
/// For detailed documentation and example responses,
/// check `api/client.rest` file in root directory.
mixin ApiConstant {
  static const int _version = 1;
  static const String _base = 'https://live-api.chandujs.in/v$_version';

  static const String find = '$_base/find';
  static const String dataSync = '$_base/sync';
}
