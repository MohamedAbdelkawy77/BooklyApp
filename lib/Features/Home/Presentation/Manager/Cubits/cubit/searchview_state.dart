part of 'searchview_cubit.dart';

sealed class SearchviewState extends Equatable {
  const SearchviewState();

  @override
  List<Object> get props => [];
}

final class SearchviewInitial extends SearchviewState {}

final class Searchviewlaoding extends SearchviewState {}

final class SearchviewSuccess extends SearchviewState {
  final List<BookModel> books;

  SearchviewSuccess({required this.books});
}

final class SearchviewFailure extends SearchviewState {
  final String errorMessage;

  SearchviewFailure({required this.errorMessage});
}
