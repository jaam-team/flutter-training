part of 'books_bloc.dart';

@immutable
abstract class BooksState {
  String bookPageTile = 'Demo Page for Bloc';
}

class BooksInitial extends BooksState {}

class BooksFetchedSuccessful extends BooksState {
  
}
