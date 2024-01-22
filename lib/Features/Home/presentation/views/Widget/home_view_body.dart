import 'package:booky_app/Core/utils/Styles.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/book-details_listView.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/custom_app_bar.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/fav_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const FeatureBookListView(),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Text(
                  "Newest Books",
                  style: Styles.titleStyle30.copyWith(fontSize: 27),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
            ],
          ),
        ),
        BookDetailsListView(),
      ],
    );
  }
}
