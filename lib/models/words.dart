import 'dart:convert';
import 'package:logodaedale/models/word.dart';

class Words {
  final List<Word> words;
  Words({required this.words});
  factory Words.fromRawJson(String str) => Words.fromJson(json.decode(str));
  factory Words.fromJson(Map<String, dynamic> json) =>
      Words(words: List<Word>.from(json["words"].map((x) => Word.fromJson(x))));

  Map<String, dynamic> toJson() => {
        "words": List<dynamic>.from(words.map((x) => x.toJson())),
      };
}
