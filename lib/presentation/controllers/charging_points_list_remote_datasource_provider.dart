import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../app_settings.dart';
import '../../data/datasources/charging_points_list_remote_datasource.dart';

final chargingPointsListRemoteDatasourceProvider =
    Provider<ChargingPointsListRemoteDatasource>(
  (ref) {
    final client = GraphQLClient(
      link: HttpLink(AppSettings.apiUrl),
      cache: GraphQLCache(),
    );
    return ChargingPointsListRemoteDatasource(client: client);
  },
);
