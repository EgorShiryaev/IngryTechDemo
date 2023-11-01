import 'package:riverpod/riverpod.dart';

final navigationBarNotifierProvider =
    NotifierProvider<NavigationBarNotifier, int>(NavigationBarNotifier.new);

class NavigationBarNotifier extends Notifier<int> {
  @override
  int build() {
    return 1;
  }

  // ignore: use_setters_to_change_properties
  void changeIndex(int newIndex) {
    state = newIndex;
  }
}
