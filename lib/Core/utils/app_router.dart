import 'package:booky_app/Features/Home/presentation/views/home_view.dart';
import 'package:booky_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => HomeView(),
      ),
    ],
  );
}
