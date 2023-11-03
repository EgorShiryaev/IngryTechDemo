
import '../models/charging_point_small_model.dart';
import 'base_graphql_datasource.dart';

class ChargingPointsListRemoteDatasource extends BaseGrapgQlDatasource {
  ChargingPointsListRemoteDatasource({required super.client});

  Future<List<ChargingPointSmallModel>> loadPoints(
    int offset, [
    int limit = 10,
  ]) async {
    const query = r'''
      query ChargingPoints($offset: Int!, $limit: Int!) {
        chargingPoints(offset: $offset, limit: $limit) {
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

    final result = await request('chargingPoints', query, vars);
    final List data = result['data'];

    return data.map((json) {
      return ChargingPointSmallModel.fromJson(json as Map<String, dynamic>);
    }).toList();
  }
}
