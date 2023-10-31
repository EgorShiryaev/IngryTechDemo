import '../utils/get_icon_full_path.dart';

enum NavigationBarIcon { map, list, filter, profile }

extension NavigationBarIconEx on NavigationBarIcon {
  String get fullPath => getIconFullPath(name);

  bool get isFirst => this == NavigationBarIcon.map;

  bool get isLast => this == NavigationBarIcon.profile;
}
