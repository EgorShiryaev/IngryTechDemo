enum NavigationBarIcon { map, list, filter, user }

extension NavigationBarIconEx on NavigationBarIcon {
  String get fullPath => 'assets/icons/$name.svg';

  bool get isFirst => this == NavigationBarIcon.map;

  bool get isLast => this == NavigationBarIcon.user;
}
