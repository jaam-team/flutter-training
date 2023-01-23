// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/blocs/books_bloc/books_bloc.dart';

class BooksListBlocDemoPage extends StatefulWidget {
  const BooksListBlocDemoPage({super.key});

  @override
  State<BooksListBlocDemoPage> createState() => _BooksListBlocDemoPageState();
}

class _BooksListBlocDemoPageState extends State<BooksListBlocDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SingleChildScrollView(
          child: BlocConsumer<BooksBloc, BooksState>(
            listener: _pageListener,
            builder: (context, state) {
              return Text(state.bookPageTile);
            },
          ),
        ),
      ),
    );
  }

  _pageListener(context, state) {
// TODO
    if (state is BooksFetchedSuccessful) {}
  }
}
