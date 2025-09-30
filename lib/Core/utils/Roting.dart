import 'package:bookly_app/Features/Home/Data/Models/BookModel/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/BookDetails.dart';
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
    path: '/bookDetails',
    name: 'bookDetails',
    builder: (context, state) {
      final book = state.extra as BookModel;
      return Bookdetails(bookModel: book);
    },
  ),
  GoRoute(
    path: Searchview.id,
    builder: (context, state) => Searchview(),
  ),
]);
