import 'package:booky_app/Core/utils/app_router.dart';
import 'package:booky_app/Core/utils/assits.dart';
import 'package:booky_app/constents.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 22),
        child: Row(
          children: [
            Image.asset(
              AssetsData.logo,
              color: Colors.black,
              width: 130,
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black,
              ),
              child: IconButton(
                color: kPrimaryColor,
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kSearchView);
                },
                icon: const Icon(
                  Icons.search,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
