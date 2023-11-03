import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart';

import '../../data/datasources/favorite_charging_points_local_datasource.dart';

final favoriteChargingPointsNotifier =
    NotifierProvider<FavoriteChargingPointsNotifier, Map<dynamic, bool>>(
  () {
    return FavoriteChargingPointsNotifier();
  },
);

class FavoriteChargingPointsNotifier extends Notifier<Map<dynamic, bool>> {
  late final FavoriteChargingPointsLocalDatasource datasource;

  FavoriteChargingPointsNotifier()
      : datasource = FavoriteChargingPointsLocalDatasource();

  @override
  Map<dynamic, bool> build() {
    return datasource.all;
  }

  Future<void> makeFavorite(String id) async {
    await datasource.write(id, true);
    state = datasource.all;
  }

  Future<void> makeUnfavorite(String id) async {
    await datasource.delete(id);
    state = datasource.all;
  }
}
