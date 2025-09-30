import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/Data/HomeRepo/ImpleHomeRepo.dart';
import 'package:bookly_app/Features/Home/Data/Models/BookModel/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'searchview_state.dart';

class SearchviewCubit extends Cubit<SearchviewState> {
  Implehomerepo implehomerepo;
  SearchviewCubit(this.implehomerepo) : super(SearchviewInitial());
  Future<void> getFeaturebooks({required String bookname}) async {
    emit(Searchviewlaoding());
    var books = await implehomerepo.fetchBooks(
        endpoint: "volumes?q=${bookname}+programming&filter=free-ebooks");
    books.fold((failure) {
      emit(SearchviewFailure(errorMessage: failure.errorMessage));
    }, (books) {
      emit(SearchviewSuccess(books: books));
    });
  }
}
