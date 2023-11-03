import 'dart:developer';

import 'package:hive/hive.dart';

late Box<bool> _box;

Future<void> initBox() async {
  _box = await Hive.openBox<bool>('favorite_points');
}

class FavoriteChargingPointsLocalDatasource {
  late final Box<bool> box;

  FavoriteChargingPointsLocalDatasource() : box = _box;

  Map<dynamic, bool> get all {
    log(box.toMap().toString());
    return box.toMap();
  }

  Future<void> write(String id, bool value) {
    log(box.toMap().toString());
    return box.put(id, value);
  }

  Future<void> delete(String id) {
    log(box.toMap().toString());
    return box.delete(id);
  }
}
