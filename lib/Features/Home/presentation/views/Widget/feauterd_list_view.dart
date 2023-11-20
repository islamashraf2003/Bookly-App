import 'package:booky_app/Features/Home/presentation/views/Widget/custom_list_view.dart';
import 'package:flutter/material.dart';

class FeatureBookListView extends StatelessWidget {
  const FeatureBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .28,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: FeaturedListViewItem(),
            );
          }),
    );
  }
}
