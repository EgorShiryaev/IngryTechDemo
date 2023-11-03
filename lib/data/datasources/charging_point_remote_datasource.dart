import '../models/charging_point_full_model.dart';
import 'base_graphql_datasource.dart';

class ChargingPointRemoteDatasource extends BaseGrapgQlDatasource {
  ChargingPointRemoteDatasource({required super.client});

  Future<ChargingPointFullModel> load(String id) async {
    const query = r'''
      query ChargingPoint($id: String!) {
        chargingPoint(id: $id) {
            id
            cpNumber
            cpType
            statusId
            power
            reservationLimit
            model
            location {
                id
                title
                address
                latitude
                longitude
                parkingAccess
                workingHoursStart
                workingHoursEnd
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
                    typeId
                    statusId
                    number
                }
            }
        }
      }
    ''';

    final vars = {'id': id};
    final result = await request('chargingPoint', query, vars);

    try {
      return ChargingPointFullModel.fromJson(result);
    } catch (e) {
      rethrow;
    }
  }
}
