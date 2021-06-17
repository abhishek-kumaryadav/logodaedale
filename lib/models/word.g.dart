// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Word _$WordFromJson(Map<String, dynamic> json) {
  return Word(
    json['word'] as String,
    (json['synonyms'] as List<dynamic>).map((e) => e as String).toList(),
    (json['antonyms'] as List<dynamic>).map((e) => e as String).toList(),
    json['definition'] as String,
  );
}

Map<String, dynamic> _$WordToJson(Word instance) => <String, dynamic>{
      'word': instance.word,
      'synonyms': instance.synonyms,
      'antonyms': instance.antonyms,
      'definition': instance.definition,
    };
