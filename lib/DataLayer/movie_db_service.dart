import 'package:flutter/foundation.dart';
import 'package:movies_flutter/DataLayer/movie.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' show json;

class MovieDBService {

  final _host = 'https://api.themoviedb.org/3/movies';
  final _apiKey = '16fd5a2a34d2c3651edf338a920f6176';

  Future<List<Movie>> fetchMovies() async {
    Map<String, String> parameters;
    parameters['api_key'] = _apiKey;
    parameters['language'] = 'en-US';
    final uri = Uri.https(_host, '/top_rated', parameters);  
    final response = await http.get(uri);
    final moviesResult = json.decode(response.body);
    final movies = moviesResult['results'].map<Movie>((json) => Movie.fromJson(json)).toList();
    return movies;
  }

  // Future<Map> request({@required String path, Map<String, String> parameters}) async {
  //   parameters['api_key'] = _apiKey;
  //   parameters['language'] = 'en-US';
  //   final uri = Uri.https(_host, '/$path', parameters);
  //   final results = await http.get(uri);
  //   final jsonObject = json.decode(results.body);
  //   return jsonObject;
  // }
}