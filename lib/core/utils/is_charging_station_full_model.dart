import '../../data/models/charging_point_full_model.dart';
import '../../data/models/charging_point_small_model.dart';

bool isChargingPointFullModel(ChargingPointSmallModel model) {
  return model is ChargingPointFullModel;
}
