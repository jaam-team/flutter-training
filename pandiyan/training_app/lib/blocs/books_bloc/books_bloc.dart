import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'books_event.dart';
part 'books_state.dart';

class BooksBloc extends Bloc<BooksEvent, BooksState> {
  String ggg = 'Book title';

  BooksBloc() : super(BooksInitial()) {
    on<BooksEvent>((event, emit) {
      // TODO: implement event handler
      // emit a state
    });
  }
}



/*


  List<Book> bookList = [];

  final Future<List<Book>> _fetchBooksList = Future<List<Book>>.delayed(
    const Duration(seconds: 0),
    () async {
      var url =
          Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});

      // Await the http get response, then decode the json-formatted response.
      var response = await http.get(url);
      // if (response.statusCode == 200) {
      final BooksResponse bookResponse = BooksResponse.fromJson(response.body);
      return bookResponse.items;
      // }
    },
  );

  */