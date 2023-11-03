import '../../data/models/connector_small_model.dart';
import '../../data/models/tariff_small_model.dart';

TariffSmallModel? getMinChargingTariff(
  List<ConnectorSmallModel> connectors,
) {
  TariffSmallModel? tariff;

  for (final con in connectors) {
    tariff ??= con.chargingTariff;

    if (tariff.price > con.chargingTariff.price) {
      tariff = con.chargingTariff;
    }
  }

  return tariff;
}
