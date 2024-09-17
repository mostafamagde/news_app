import 'package:flutter/material.dart';

import '../../../models/category_data.dart';
import 'package:bounce/bounce.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.data,
    required this.index,
    required this.onCategoryClick,
  });

  final int index;
  final CategoryData data;
  final void Function(CategoryData) onCategoryClick;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Bounce(
      onTap: () {
        onCategoryClick(data);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: data.categoryColor,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(25),
            topRight: const Radius.circular(25),
            bottomLeft: index % 2 == 0
                ? const Radius.circular(25)
                : const Radius.circular(0),
            bottomRight: index % 2 == 0
                ? const Radius.circular(0)
                : const Radius.circular(25),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.asset(data.categoryImage),
            ),
            Text(
              data.categoryName,
              style: theme.textTheme.titleMedium,
            )
          ],
        ),
      ),
    );
  }
}
