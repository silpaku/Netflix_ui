import 'package:netflix/core/strings.dart';
import 'package:netflix/infrastructure/api_kays.dart';

class ApiEndPoints {
  static const downloads = "$kBaseUrl/trending/movie/day?api_key=$apiKey";
  static const search = '$kBaseUrl/search/movie?api_key=$apiKey';

  static const hotandnewMovie='$kBaseUrl/discover/movie?api_key=$apiKey';
  static const hotandnewTv='$kBaseUrl/discover/tv?api_key=$apiKey';

}
