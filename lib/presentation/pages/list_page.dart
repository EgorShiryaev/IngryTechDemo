import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/get_icon_full_path.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SearchBar(
          hintText: 'Поиск...',
          trailing: [_SearchGlassIcon()],
        ),
      ),
      body: const Center(
        child: Text('List'),
      ),
    );
  }
}

class _SearchGlassIcon extends StatelessWidget {
  const _SearchGlassIcon({super.key});

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
