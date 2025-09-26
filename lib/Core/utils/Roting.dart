import 'package:bookly_app/Features/Home/Presentation/Views/HomeView.dart';
import 'package:bookly_app/Features/Search/Presentation/views/Searchview.dart';
import 'package:bookly_app/Features/Splash/Presentation/Views/SplashScreen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => SplashScreen(),
  ),
  GoRoute(
    path: Homeview.id,
    builder: (context, state) => Homeview(),
  ),
  GoRoute(
    path: Searchview.id,
    builder: (context, state) => Searchview(),
  ),
]);
