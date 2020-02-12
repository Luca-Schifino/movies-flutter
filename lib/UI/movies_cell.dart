import 'package:flutter/material.dart';
import 'package:movies_flutter/DataLayer/movie.dart';

class MovieCell extends StatelessWidget {
  MovieCell({this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Text(movie.title);
  }
}