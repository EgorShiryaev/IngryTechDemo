import '../../data/models/product_name.dart';
import '../../data/models/tariff_small_model.dart';

TariffSmallModel getChargingTariff(List<TariffSmallModel> tariffs) {
  final chargingTariff = tariffs.firstWhere(
    (element) => element.productName == ProductName.charging,
  );
  return chargingTariff;
}
