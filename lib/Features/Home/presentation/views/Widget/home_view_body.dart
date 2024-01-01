import 'package:booky_app/Core/utils/Styles.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/custom_app_bar.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/favorit-list_view_item.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/fav_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeatureBookListView(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 13),
                child: Text(
                  "Favorites",
                  style: Styles.titleStyle23,
                ),
              ),
              SizedBox(
                height: 18,
              ),
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: BestSellerListViewItem(),
              );
            },
            childCount: 10,
          ),
        ),
      ],
    );
  }
}
