part of 'Seealso_cubit.dart';

sealed class SeealsoState extends Equatable {
  const SeealsoState();

  @override
  List<Object> get props => [];
}

final class SeealsoInitial extends SeealsoState {}

final class SeealsoLoading extends SeealsoState {}

final class SeealsoSuccess extends SeealsoState {
  final List<BookModel> books;

  SeealsoSuccess({required this.books});
}

final class SeealsoFailure extends SeealsoState {
  final String errorMessage;

  SeealsoFailure({required this.errorMessage});
}
