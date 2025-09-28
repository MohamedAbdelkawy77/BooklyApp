import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/Data/HomeRepo/ImpleHomeRepo.dart';
import 'package:bookly_app/Features/Home/Data/Models/BookModel/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'get_feature_books_state.dart';

class GetFeatureBooksCubit extends Cubit<GetFeatureBooksState> {
  GetFeatureBooksCubit() : super(GetFeatureBooksInitial());

  void getFeaturebooks() async {
    try {
      emit(GetFeatureBooksLoading());
      var books = await Implehomerepo().fetchFeaturesBooks();
      emit(GetFeatureBooksSuccess(books: books as List<BookModel>));
    } on Exception catch (e) {
      GetFeatureBooksFailure(errorMessage: e.toString());
    }
  }
}
