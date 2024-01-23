import 'package:booky_app/Core/utils/service_locator.dart';
import 'package:booky_app/Features/Home/data/Models/book_model/book_model.dart';
import 'package:booky_app/Features/Home/data/Models/repos/home_repo_implementation.dart';
import 'package:booky_app/Features/Home/presentation/manager/similar_category_books_cubet/similar_category_cubit.dart';
import 'package:booky_app/Features/Home/presentation/views/book_details_view.dart';
import 'package:booky_app/Features/Home/presentation/views/home_view.dart';
import 'package:booky_app/Features/Search/presetation/view/search_view.dart';
import 'package:booky_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const KBookView = '/bookView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: KBookView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarCategoryCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(bookModel: state.extra as BookModel),
        ),
      ),
    ],
  );
}
