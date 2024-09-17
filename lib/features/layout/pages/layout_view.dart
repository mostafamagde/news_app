
import 'package:flutter/material.dart';
import 'package:news_app/features/layout/widgets/custom_drawer.dart';
import 'package:news_app/features/layout/widgets/selected_category_view.dart';
import 'package:news_app/features/setting_view/pages/setting_view.dart';
import 'package:news_app/models/category_data.dart';

import '../widgets/category_item.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int counter = 0;
  List<CategoryData> categoryDataList = [
    CategoryData(
      categoryName: "Sports",
      categoryId: "sports",
      categoryImage: "assets/images/sports.png",
      categoryColor: const Color(0xFFC91C22),
    ),
    CategoryData(
      categoryName: "Politics",
      categoryId: "politics",
      categoryImage: "assets/images/Politics.png",
      categoryColor: const Color(0xFF003E90),
    ),
    CategoryData(
      categoryName: "Health",
      categoryId: "health",
      categoryImage: "assets/images/health.png",
      categoryColor: const Color(0xFFED1E79),
    ),
    CategoryData(
      categoryName: "Business",
      categoryId: "business",
      categoryImage: "assets/images/bussines.png",
      categoryColor: const Color(0xFFCF7E48),
    ),
    CategoryData(
      categoryName: "Environment",
      categoryId: "environment",
      categoryImage: "assets/images/environment.png",
      categoryColor: const Color(0xFF4882CF),
    ),
    CategoryData(
      categoryName: "Science",
      categoryId: "science",
      categoryImage: "assets/images/science.png",
      categoryColor: const Color(0xFFF2D352),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(
            "assets/images/pattern.png",
          ),
        ),
      ),
      child: Scaffold(
        drawer: Drawer(
          child: CustomDrawer(
            onSettingClick: () {

              setState(() {  counter=1;});
              Navigator.pop(context);
            },
            onClick: () {
              counter = 0;
              selectedCategory = null;
              setState(() {});
              Navigator.pop(context);
            },
          ),
        ),
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ),
            ),
          ],
          title: Text(counter ==0?
            selectedCategory == null
                ? "News App"
                : selectedCategory!.categoryName:"Settings",
            style: theme.textTheme.titleMedium,
          ),
        ),
        body: counter == 0
            ? selectedCategory == null
                ? Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 10, bottom: 10),
                          child: Text(
                            """Pick your category 
of interest""",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        Expanded(
                          child: GridView.builder(
                            clipBehavior: Clip.none,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 15,
                                    mainAxisSpacing: 15,
                                    childAspectRatio: .85),
                            itemBuilder: (context, index) => CategoryItem(
                              onCategoryClick: (category) => setState(
                                () {
                                  selectedCategory = category;
                                },
                              ),
                              data: categoryDataList[index],
                              index: index,
                            ),
                            itemCount: categoryDataList.length,
                          ),
                        )
                      ],
                    ),
                  )
                : SelectedCategoryView(
                    data: selectedCategory!,
                  )
            : const SettingView(),
      ),
    );
  }

  CategoryData? selectedCategory;
}
