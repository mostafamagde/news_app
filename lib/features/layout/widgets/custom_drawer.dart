import 'package:flutter/material.dart';
import 'package:news_app/core/theme/color_pallete.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var media = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          color: theme.primaryColor,
          height: media.height * 0.18,
          width: media.width,
          child: Center(
            child: Text(
              "News App!",
              style: theme.textTheme.headlineMedium,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        InkWell(
          onTap: () {

          },
          child: Row(
            children: [
              const SizedBox(
                width: 14,
              ),
              const Icon(
                Icons.list,
                size: 40,
                color: ColorPallete.drawerTextColor,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Categories",
                style: theme.textTheme.headlineLarge,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {

          },
          child: Row(
            children: [
              const SizedBox(
                width: 14,
              ),
              const Icon(
                Icons.settings,
                color: ColorPallete.drawerTextColor,
                size: 40,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Settings",
                style: theme.textTheme.headlineLarge,
              )
            ],
          ),
        )
      ],
    );
  }
}
