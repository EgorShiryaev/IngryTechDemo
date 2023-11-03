import 'package:flutter/material.dart';

import '../../../../data/models/location_full_model.dart';
import '../../../../data/models/location_small_model.dart';
import 'charging_point_info_field.dart';
import 'location_data_view.dart';
import 'working_hours_data_view.dart';

class ChargingPointLocationView extends StatelessWidget {
  final LocationSmallModel location;
  const ChargingPointLocationView({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (location is LocationFullModel)
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: ChargingPointInfoField(
              label: 'Время работы',
              data: WorkingHoursDataView(
                workingHours: (location as LocationFullModel).workingHours,
              ),
            ),
          ),
        const SizedBox(height: 16),
        ChargingPointInfoField(
          label: 'Адрес',
          data: LocationDataView(location: location),
        ),
        if (location is LocationFullModel &&
            (location as LocationFullModel).isFreeParking)
          const Padding(
            padding: EdgeInsets.only(top: 16),
            child: ChargingPointInfoField(
              label: 'Парковка',
              data: Text(
                'Бесплатный въезд',
                style: TextStyle(fontSize: 15, color: Color(0xFF000000)),
              ),
            ),
          ),
      ],
    );
  }
}
