enum NavigationBarIcon { map, list, filter, profile }

extension NavigationBarIconEx on NavigationBarIcon {
  String get fullPath => 'assets/icons/$name.svg';

  bool get isFirst => this == NavigationBarIcon.map;

  bool get isLast => this == NavigationBarIcon.profile;
}
