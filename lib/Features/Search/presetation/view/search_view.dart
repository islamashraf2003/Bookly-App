import 'package:booky_app/Core/utils/Styles.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/book-details_listView.dart';
import 'package:booky_app/Features/Search/presetation/view/widgets/custom_search_textField.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SafeArea(
              child: Column(
                children: [
                  CustomSearchTextFiled(),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 13),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Search Result",
                        style: Styles.titleStyle23.copyWith(
                          fontSize: 19,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          BookDetailsListView(),
        ],
      ),
    );
  }
}
//CustomSearchTextFiled(),
//BookDetailsListView()
