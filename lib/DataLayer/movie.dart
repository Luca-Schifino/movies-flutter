class MoviesResult {
  final int page;
  final int totalResults;
  final int totalPages;
  final List<Movie> movies;

  MoviesResult.fromJson(json)
      : page = json['page'],
        totalResults = json['total_results'],
        totalPages = json['total_pages'],
        movies = json['results'];
}

class Movie {
  final int movieId;
  final int voteCount;
  final double voteAverage;
  final String title;
  final double popularity;
  final String posterPath;
  final String originalLanguage;
  final String originalTitle;
  final List<int> genreIds;
  final String backdropPath;
  final String releaseDate;

  Movie.fromJson(json)
      : movieId = json['id'], 
        voteCount = json['vote_count'],
        voteAverage = json['vote_average'],
        title = json['title'],
        popularity = json['popularity'],
        posterPath = json['poster_path'],
        originalLanguage = json['original_language'],
        originalTitle = json['original_title'],
        genreIds = json['genre_ids'],
        backdropPath = json['backdrop_path'],
        releaseDate = json['release_date'];
}