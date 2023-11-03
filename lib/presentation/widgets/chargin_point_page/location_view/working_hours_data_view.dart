import 'package:flutter/material.dart';

import '../../../../data/models/working_hours_model.dart';

class WorkingHoursDataView extends StatelessWidget {
  final WorkingHoursModel workingHours;
  const WorkingHoursDataView({super.key, required this.workingHours});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 200),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(workingHours.start),
              Text(workingHours.end),
            ],
          ),
        ),
        const SizedBox(height: 4),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 200),
          child: ColoredBox(
            color: colorScheme.outlineVariant,
            child: const SizedBox(
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
        ),
      ],
    );
  }
}
