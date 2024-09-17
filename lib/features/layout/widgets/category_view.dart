import 'package:flutter/material.dart';
import 'package:news_app/features/layout/widgets/tab_bar_item.dart';

import '../../../models/sources_model.dart';

class CategoryView extends StatefulWidget {
  final List<Source> sourceList;

  const CategoryView({super.key, required this.sourceList});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          length: widget.sourceList.length,
          child: TabBar(
            tabAlignment: TabAlignment.start,
            padding: const EdgeInsets.all(8),
            labelPadding: const EdgeInsets.symmetric(horizontal: 6),
            dividerColor: Colors.transparent,
            isScrollable: true,
            indicatorColor: Colors.transparent,
            indicatorPadding: EdgeInsets.zero,
            onTap: (value) {
              setState(() {
                selected = value;
              });
            },
            tabs: widget.sourceList
                .map(
                  (toElement) => TabBarItem(
                    source: toElement,
                    isSelected:
                        selected == widget.sourceList.indexOf(toElement),
                  ),
                )
                .toList(),
          ),
        )
      ],
    );
  }
}
