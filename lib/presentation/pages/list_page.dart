import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/get_icon_full_path.dart';
import '../widgets/charging_points_list/charging_points_list_page_body.dart';
import '../widgets/platform_offset.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const PlatformOffset(
          mobilePadding: EdgeInsets.zero,
          child: SearchBar(
            hintText: 'Поиск...',
            trailing: [_SearchGlassIcon()],
          ),
        ),
      ),
      body: const SafeArea(
        child: PlatformOffset(
          child: ChargingPointsListPageBody(),
        ),
      ),
    );
  }
}

class _SearchGlassIcon extends StatelessWidget {
  const _SearchGlassIcon();

  static const double size = 24;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      getIconFullPath('search'),
      fit: BoxFit.none,
      width: size,
      height: size,
    );
  }
}
