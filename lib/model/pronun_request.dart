import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PronunRequest with ChangeNotifier {
  String? ref;
  final int id;
  final String title;
  final String video;
  final List<List<String>>? words;
  final List<List<AudiosWords>>? audiosWords;
  final List<AudiosAllWords>? audiosAllWords;
  bool isFavorite;

  PronunRequest.request({
    this.ref,
    required this.id,
    required this.title,
    required this.video,
    this.words,
    this.audiosWords,
    this.audiosAllWords,
    this.isFavorite = false,
  });

  Map<String, dynamic> toJson() {
    return {
      'ref': ref,
      'id': id,
      'title': title,
      'video': video,
      'words': words,
      'audiosWords': audiosWords,
      'audiosAllWords': audiosAllWords,
      'isFavorite': audiosAllWords
    };
  }

  factory PronunRequest.fromJson(Map<String, dynamic> json) {
    return PronunRequest.request(
      id: json['id'],
      title: json['title'],
      video: json['video'],
      words: (json['words'] as List)
          .map((item) =>
              List<String>.from(item.map((innerItem) => innerItem.toString())))
          .toList(),
      audiosWords: (json['audiosWords'] as List)
          .map((item) => List<AudiosWords>.from(
              item.map((innerItem) => innerItem.toString())))
          .toList(),
      audiosAllWords: List<AudiosAllWords>.from(
          json['audiosAllWords'].map((item) => item.toString())),
    );
  }

  void toggleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }

  late AudioPlayer audioPlayer;
}

class AudiosWords with ChangeNotifier {
  final String url;
  late final AudioPlayer player;

  AudiosWords({required this.url}) {
    player = AudioPlayer();
    preloadAudio();
  }

  Future<void> preloadAudio() async {
    await player.setSourceUrl(url);
  }

  @override
  void dispose() {
    super.dispose();
    player.stop();
    player.dispose();
  }
}

class AudiosAllWords with ChangeNotifier {
  final String url;
  late final AudioPlayer player;

  AudiosAllWords({required this.url}) {
    player = AudioPlayer();
    preloadAudio();
  }

  Future<void> preloadAudio() async {
    await player.setSourceUrl(url);
  }

  void dispose() {
    super.dispose();
    player.stop();
    player.dispose();
  }
}
