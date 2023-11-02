import 'package:flutter/material.dart';

import '../../../data/models/location_full_model.dart';
import '../../../data/models/location_small_model.dart';
import 'location_point_view.dart';

class LocationDataView extends StatelessWidget {
  final LocationSmallModel location;
  const LocationDataView({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          location.address,
          maxLines: 3,
          style: const TextStyle(
            fontSize: 15,
            color: Color(0xFF000000),
          ),
        ),
        if (location is LocationFullModel)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: LocationPointView(
              location: location as LocationFullModel,
            ),
          ),
      ],
    );
  }
}
