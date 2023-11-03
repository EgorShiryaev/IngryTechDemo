import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/datasources/charging_points_list_remote_datasource.dart';
import 'graphql_client_provider.dart';

final chargingPointsListRemoteDatasourceProvider =
    Provider<ChargingPointsListRemoteDatasource>(
  (ref) {
    final client = ref.watch(graphQLClientProvider);
    return ChargingPointsListRemoteDatasource(client: client);
  },
);
