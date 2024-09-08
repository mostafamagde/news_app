import 'package:flutter/material.dart';

import '../../../models/category_data.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    super.key,
    required this.data, required this.index,
  });
final int index;
  final CategoryData data;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return InkWell(
      onTap: () {

      },
      child: Container(
      padding: const EdgeInsets.all(10),
        decoration:  BoxDecoration(
          color: data.categoryColor,
          borderRadius:  BorderRadius.only(
           topLeft: const Radius.circular(25),
           topRight: const Radius.circular(25),
           bottomLeft:  index%2==0? const Radius.circular(25):const Radius.circular(0),
           bottomRight: index%2==0? const Radius.circular(0):const Radius.circular(25),
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
