import 'package:flutter/material.dart';

class RoundedNavigationBarItem extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isSelected;
  final VoidCallback onPress;
  const RoundedNavigationBarItem({
    super.key,
    this.isFirst = false,
    this.isLast = false,
    required this.isSelected,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1,
        child: InkWell(
          onTap: onPress,
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(15),
                  topRight: const Radius.circular(15),
                  bottomLeft: Radius.circular(isFirst ? 40 : 15),
                  bottomRight: Radius.circular(isLast ? 40 : 15),
                ),
                color:
                    isSelected ? const Color(0xFFEBEA00) : Colors.transparent,
              ),
              child: const Icon(Icons.abc),
            ),
          ),
        ),
      ),
    );
  }
}
