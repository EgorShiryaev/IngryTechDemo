import 'package:graphql_flutter/graphql_flutter.dart';

import '../models/charging_point_small_model.dart';

class ChargingPointsListRemoteDatasource {
  final GraphQLClient client;

  ChargingPointsListRemoteDatasource({required this.client});

  Future<List<ChargingPointSmallModel>> loadList(
    int offset, [
    int limit = 10,
  ]) async {
    const query = '''
      query ChargingPoints {
        chargingPoints(offset: 0, limit: 10) {
            data {
                id
                cpNumber
                cpType
                statusId
                location {
                    id
                    title
                    address
                }
                connectors {
                    data {
                        id
                        tariffs {
                            id
                            productName
                            uom
                            price
                        }
                    }
                }
            }
        }
    }
  ''';
    final vars = {'limit': limit, 'offset': offset};
    final options = QueryOptions(document: gql(query), variables: vars);
    final result = await client.query(options);

    final exception = result.exception;
    if (exception != null) {
      throw exception;
    }

    final chargingPointsJson = result.data?['chargingPoints'];

    if (chargingPointsJson == null) {
      return [];
    }

    // ignore: avoid_dynamic_calls
    final List list = chargingPointsJson!['data'];

    return list
        .map(
          (json) =>
              ChargingPointSmallModel.fromJson(json as Map<String, dynamic>),
        )
        .toList();
  }
}
