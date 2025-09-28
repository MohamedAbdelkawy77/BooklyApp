import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/Data/HomeRepo/ImpleHomeRepo.dart';
import 'package:bookly_app/Features/Home/Data/Models/BookModel/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'get_feature_books_state.dart';

class GetFeatureBooksCubit extends Cubit<GetFeatureBooksState> {
  GetFeatureBooksCubit() : super(GetFeatureBooksInitial());

  Future<void> getFeaturebooks() async {
    emit(GetFeatureBooksLoading());
    var books = await Implehomerepo().fetchFeaturesBooks();
    books.fold((failure) {
      emit(GetFeatureBooksFailure(errorMessage: failure.errorMessage));
    }, (books) {
      emit(GetFeatureBooksSuccess(books: books));
    });
  }
}
