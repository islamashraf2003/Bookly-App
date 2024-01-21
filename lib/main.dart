import 'package:booky_app/Core/utils/app_router.dart';
import 'package:booky_app/Core/utils/service_locator.dart';
import 'package:booky_app/Features/Home/data/Models/repos/home_repo.dart';
import 'package:booky_app/Features/Home/data/Models/repos/home_repo_implementation.dart';
import 'package:booky_app/Features/Home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:booky_app/Features/Home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:booky_app/constents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setUpServiceLocator();
  HomeRepoImpl().fetchNewestBooks();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewestBoosk(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(),
        ),
      ),
    );
  }
}
