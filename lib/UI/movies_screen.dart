import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter/BLoC/bloc_provider.dart';
import 'package:movies_flutter/BLoC/movies_bloc.dart';
import 'package:movies_flutter/DataLayer/movie.dart';
import 'package:movies_flutter/UI/movies_cell.dart';
import 'package:platform_widgets/platform_bar.dart';
import 'package:platform_widgets/platform_scaffold.dart';

class MoviesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appbar: PlatformBar(
        middle: Text('Movies'),
      ),
      child: _buildMoviesResults(),
    );
  }

  Widget _buildMoviesResults() {
    final bloc = MoviesBloc();
    bloc.fetchMovies();
    return BlocProvider<MoviesBloc>(
      bloc: bloc,
      child: StreamBuilder(
        stream: bloc.stream,
        builder: (context, snapshot) {
          final results = snapshot.data;
          if (results == null) {
            return Center(child: Text('Error'));
          }
          if (results.isEmpty) {
            return Center(child: Text('No results'));
          }
          return _buildMoviesList(results);
        },
      ),
    );
  }

  Widget _buildMoviesList(List<Movie> movies) {
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];
        return MovieCell(movie: movie);
      },
    );
  }
}