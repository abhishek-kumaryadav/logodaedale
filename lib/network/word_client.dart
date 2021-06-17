import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:logodaedale/models/word.dart';

class WordClient {
  static const String _baseUrl = "http://192.168.1.4:8000/";
  final String word;
  WordClient({required this.word});

  Future<Word?> fetchWord() async {
    final response = await http.get(Uri.parse(_baseUrl + word));
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      debugPrint(jsonDecode(response.body).toString());
      return Word.fromJson(jsonDecode(response.body));
      debugPrint(response.statusCode.toString());
      // debugPrint(json['synonyms']);
      // debugPrint(response.body);
    } else {
      // return null;
      // throw Exception('')

    }
  }
}
