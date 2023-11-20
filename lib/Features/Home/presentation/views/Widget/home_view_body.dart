import 'package:booky_app/Features/Home/presentation/views/Widget/custom_app_bar.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/custom_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        CustomListViewItem(),
      ],
    );
  }
}
