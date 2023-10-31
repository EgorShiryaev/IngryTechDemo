enum NavigationBarIcon { map, filter, list, user }

extension NavigationBarIconEx on NavigationBarIcon {
  String get fullPath => 'assets/icons/$name.svg';

  bool get isFirst => this == NavigationBarIcon.map;

  bool get isLast => this == NavigationBarIcon.user;
}
