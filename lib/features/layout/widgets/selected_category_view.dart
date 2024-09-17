import 'package:flutter/material.dart';
import 'package:news_app/core/network/api_manager.dart';
import 'package:news_app/core/theme/color_pallete.dart';
import 'package:news_app/models/category_data.dart';
import 'package:news_app/models/sources_model.dart';

import 'category_view.dart';

class SelectedCategoryView extends StatefulWidget {
  const SelectedCategoryView({super.key, required this.data});

  final CategoryData data;

  @override
  State<SelectedCategoryView> createState() => _SelectedCategoryViewState();
}

class _SelectedCategoryViewState extends State<SelectedCategoryView> {


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiManager.fetchSourcesList(widget.data.categoryId),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text("Error fetching");
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(
              color: ColorPallete.primaryLightColor,
            ),
          );
        }
        List<Source> sourceList = snapshot.data ?? [];
        return CategoryView(sourceList: sourceList,);
      },
    );
  }
}
