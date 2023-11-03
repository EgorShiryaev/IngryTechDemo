import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/get_icon_full_path.dart';
import '../../../../data/models/location_full_model.dart';

class LocationPointView extends StatelessWidget {
  final LocationFullModel location;
  const LocationPointView({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final locationCoordsTextStyle =
        textTheme.bodySmall?.copyWith(color: const Color(0xFF8A8E8F));
    final locationCoords = '${location.latitude} ${location.longitude}';
    return InkWell(
      onTap: () {
        Clipboard.setData(ClipboardData(text: locationCoords));
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Скопировано'),
            duration: Duration(milliseconds: 500),
          ),
        );
      },
      borderRadius: const BorderRadius.all(Radius.circular(4)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(locationCoords, style: locationCoordsTextStyle),
          const SizedBox(width: 4),
          SvgPicture.asset(getIconFullPath('copy')),
        ],
      ),
    );
  }
}
