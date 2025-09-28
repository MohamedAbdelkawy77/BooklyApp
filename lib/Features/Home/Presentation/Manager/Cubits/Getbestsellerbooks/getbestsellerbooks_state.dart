part of 'getbestsellerbooks_cubit.dart';

sealed class GetbestsellerbooksState extends Equatable {
  const GetbestsellerbooksState();

  @override
  List<Object> get props => [];
}

final class GetbestsellerbooksInitial extends GetbestsellerbooksState {}

final class GetbestsellerbooksLoading extends GetbestsellerbooksState {}

final class GetbestsellerbooksSuccess extends GetbestsellerbooksState {
  final List<BookModel> books;

  GetbestsellerbooksSuccess({required this.books});
}

final class Getbestsellerbooksfailure extends GetbestsellerbooksState {
  final String errorMessage;

  Getbestsellerbooksfailure({required this.errorMessage});
}
