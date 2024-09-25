import 'package:dio/dio.dart';
import '../model/movie_model.dart';

const apiKey = "8f9e12707813ac21626ea699edc4b71e";

class Api {
  final Dio _dio = Dio();
  final String upComingApiUrl =
      "https://api.themoviedb.org/3/movie/upcoming?api_key=$apiKey";
  final String popularApiUrl =
      "https://api.themoviedb.org/3/movie/popular?api_key=$apiKey";
  final String topRatedApiUrl =
      "https://api.themoviedb.org/3/movie/top_rated?api_key=$apiKey";

  Future<List<Movie>> getUpcomingMovies() async {
    try {
      final response = await _dio.get(upComingApiUrl);

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['results'];

        List<Movie> movies = data.map((movie) => Movie.fromMap(movie)).toList();
        return movies;
      } else {
        throw Exception('Falha ao carregar os próximos filmes');
      }
    } catch (e) {
      throw Exception('Erro ao carregar os próximos filmes: $e');
    }
  }

  Future<List<Movie>> getPopularMovies() async {
    try {
      final response = await _dio.get(popularApiUrl);

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['results'];

        List<Movie> movies = data.map((movie) => Movie.fromMap(movie)).toList();
        return movies;
      } else {
        throw Exception('Falha ao carregar filmes populares');
      }
    } catch (e) {
      throw Exception('Erro ao carregar filmes populares: $e');
    }
  }

  Future<List<Movie>> getTopRatedMovies() async {
    try {
      final response = await _dio.get(topRatedApiUrl);

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['results'];

        List<Movie> movies = data.map((movie) => Movie.fromMap(movie)).toList();
        return movies;
      } else {
        throw Exception('Falha ao carregar os filmes mais bem avaliados');
      }
    } catch (e) {
      throw Exception('Erro ao carregar os filmes mais bem avaliados: $e');
    }
  }
}