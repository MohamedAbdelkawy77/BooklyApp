import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/Data/HomeRepo/ImpleHomeRepo.dart';
import 'package:bookly_app/Features/Home/Data/Models/BookModel/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'getbestsellerbooks_state.dart';

class GetbestsellerbooksCubit extends Cubit<GetbestsellerbooksState> {
  GetbestsellerbooksCubit() : super(GetbestsellerbooksInitial());
  Future<void> getFeaturebooks() async {
    emit(GetbestsellerbooksLoading());
    var books = await Implehomerepo().fetchBestsellerBooks();
    books.fold((failure) {
      emit(Getbestsellerbooksfailure(errorMessage: failure.errorMessage));
    }, (books) {
      emit(GetbestsellerbooksSuccess(books: books));
    });
  }
}
