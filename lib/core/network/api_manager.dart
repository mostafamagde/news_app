import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/core/config/constants.dart';
import 'package:news_app/models/sources_model.dart';

class ApiManager {
  static Future<List<Source>> fetchSourcesList(String category) async {
    var url = Uri.https(Constants.domain, "/v2/top-headlines/sources", {
      "apiKey": Constants.apiKey,
      "category": category,
    });
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);

      SourcesModel source = SourcesModel.fromJson(data);
      return source.sources;
    } else {
      throw Exception('Failed to fetch sources list');
    }
  }
}
