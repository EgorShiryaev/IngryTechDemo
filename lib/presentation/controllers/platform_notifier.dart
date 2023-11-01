import 'package:flutter_riverpod/flutter_riverpod.dart';

final isMobileNotifierProvider =
    NotifierProvider<IsMobileNotifier, bool>(IsMobileNotifier.new);

class IsMobileNotifier extends Notifier<bool> {
  @override
  bool build() {
    return true;
  }

  // ignore: use_setters_to_change_properties
  void change(bool newState) {
    state = newState;
  }
}
