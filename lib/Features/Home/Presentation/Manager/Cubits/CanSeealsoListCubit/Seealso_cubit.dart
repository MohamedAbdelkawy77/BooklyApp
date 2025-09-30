import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/Data/HomeRepo/ImpleHomeRepo.dart';
import 'package:bookly_app/Features/Home/Data/Models/BookModel/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'Seealso_state.dart';

class SeealsoCubit extends Cubit<SeealsoState> {
  SeealsoCubit(this.implehomerepo) : super(SeealsoInitial());
  Implehomerepo implehomerepo;
  Future<void> getFeaturebooks() async {
    emit(SeealsoLoading());
    var books = await implehomerepo.fetchBooks(
        endpoint: "volumes?q=python+programming&filter=free-ebooks");
    books.fold((failure) {
      emit(SeealsoFailure(errorMessage: failure.errorMessage));
    }, (books) {
      emit(SeealsoSuccess(books: books));
    });
  }
}
