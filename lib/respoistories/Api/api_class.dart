import 'dart:convert';
import 'package:http/http.dart';
import '../models/animemodel.dart';
import 'apiclient.dart';

class AnimeRepository {
  ApiClient apiClient = ApiClient();
  var body = {};
  Future<Animemodel> getAnime() async {
    String url = 'https://anime-db.p.rapidapi.com/anime?page=1&size=10&search=Fullmetal&genres=Fantasy,Drama&sortBy=ranking&sortOrder=asc';
    Response response = await apiClient.invokeAPI(url, 'GET',body);
    return Animemodel.fromJson(jsonDecode(response.body));
  }
}