import 'package:booky_app/Features/Home/presentation/views/book_details_view.dart';
import 'package:booky_app/Features/Home/presentation/views/home_view.dart';
import 'package:booky_app/Features/Search/presetation/view/search_view.dart';
import 'package:booky_app/Features/Splash/presentation/views/splash_view.dart';
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
        builder: (context, state) => SearchView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: KBookView,
        builder: (context, state) => BookDetailsView(),
      ),
    ],
  );
}
