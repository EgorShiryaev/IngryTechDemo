import 'package:flutter/material.dart';

import '../../../../data/models/working_hours_model.dart';

class WorkingHoursDataView extends StatelessWidget {
  final WorkingHoursModel workingHours;
  const WorkingHoursDataView({super.key, required this.workingHours});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(workingHours.start),
            Text(workingHours.end),
          ],
        ),
        const SizedBox(height: 4),
        const ColoredBox(
          color: Color(0x204B4B4B),
          child: SizedBox(
            height: 2,
            child: Align(
              alignment: Alignment(0.6, 0),
              child: ColoredBox(
                color: Color(0xFF00AB55),
                child: SizedBox(
                  height: 2,
                  width: 100,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
