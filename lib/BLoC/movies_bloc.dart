import 'dart:async';

import 'package:movies_flutter/BLoC/bloc.dart';
import 'package:movies_flutter/DataLayer/movie.dart';
import 'package:movies_flutter/DataLayer/movie_db_service.dart';

class MoviesBloc implements Bloc {
  MoviesBloc({this.movies});

  final List<Movie> movies;
  final _service = MovieDBService();
  final _controller = StreamController<List<Movie>>();
  Stream<List<Movie>> get stream => _controller.stream;

  void fetchMovies() async {
    final results = await _service.fetchMovies();
    _controller.sink.add(results);
    
  }

  @override
  void dispose() {
    _controller.close();
  }
}