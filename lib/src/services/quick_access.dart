import 'package:music_stories/src/models/quick_access.dart';

class QuickAccessService {
  /// Get category names list from quickaccessmodel items
  static List<String> getCategoryNames(List<QuickAccessModel> items) {
    if (items == null) {
      throw Exception('');
    }
    final List<String> categories = items.map((QuickAccessModel item) {
      return item.categry;
    }).toList();
  }
}