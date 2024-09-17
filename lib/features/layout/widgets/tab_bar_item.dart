import 'package:flutter/material.dart';
import 'package:news_app/core/theme/color_pallete.dart';

import '../../../models/sources_model.dart';

class TabBarItem extends StatelessWidget {
  final Source source;
  final bool isSelected;

  const TabBarItem({
    super.key,
    required this.source,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      width: 95,
      height: 35,
      decoration: BoxDecoration(
        color: isSelected ? theme.primaryColor : Colors.white,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          width: 2,
          color: ColorPallete.primaryLightColor,
        ),
      ),
      child: Center(
        child: Text(
          source.name,
          style: theme.textTheme.bodySmall?.copyWith(
            color: isSelected ? Colors.white : theme.primaryColor,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
