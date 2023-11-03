import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/datasources/charging_point_remote_datasource.dart';
import 'graphql_client_provider.dart';

final chargingPointRemoteDatasourceProvider =
    Provider<ChargingPointRemoteDatasource>(
  (ref) {
    final client = ref.watch(graphQLClientProvider);
    return ChargingPointRemoteDatasource(client: client);
  },
);
