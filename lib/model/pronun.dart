import 'package:get/get.dart';
import 'package:pj_teste/model/audio.dart';

class Pronun extends GetxController {
  String? ref;
  final int id;
  final String title;
  final String video;
  final List<List<String>>? words;
  final List<List<Audio>>? audiosWords;
  final List<Audio>? allAudiosWords;
  var isFavorite = false.obs;

  Pronun({
    this.ref,
    required this.id,
    required this.title,
    required this.video,
    this.words,
    this.audiosWords,
    this.allAudiosWords,
  });

  Map<String, dynamic> toJson() {
    return {
      'ref': ref,
      'id': id,
      'title': title,
      'video': video,
      'words': words,
      'audiosWords': audiosWords,
      'audiosAllWords': allAudiosWords,
      'isFavorite': isFavorite
    };
  }

  factory Pronun.fromJson(Map<String, dynamic> json) {
    return Pronun(
      id: json['id'],
      title: json['title'],
      video: json['video'],
      words: (json['words'] as List)
          .map((item) =>
              List<String>.from(item.map((innerItem) => innerItem.toString())))
          .toList(),
      audiosWords: (json['audiosWords'] as List)
          .map((item) =>
              List<Audio>.from(item.map((innerItem) => innerItem.toString())))
          .toList(),
      allAudiosWords: List<Audio>.from(
          json['audiosAllWords'].map((item) => item.toString())),
    );
  }

  void toggleFavorite() {
    isFavorite.value = !isFavorite.value;
  }
}
