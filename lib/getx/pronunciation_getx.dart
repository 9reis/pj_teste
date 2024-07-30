import 'dart:convert';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pj_teste/model/audio.dart';
import 'package:pj_teste/model/pronun.dart';
import 'package:pj_teste/model/pronun_request.dart';

class PronunGetx2 extends GetxController {
  final RxList<Pronun> listPron = <Pronun>[
    Pronun(
      id: 1,
      title: 'TESTE 1',
      video: ' Video A ',
      words: [
        [
          'TESTE 1.1',
          'TESTE 1.2',
          'TESTE 1.3',
          'TESTE 1.4',
          'TESTE 1.5',
        ],
        [
          'TESTE 1.6',
          'TESTE 1.7',
          'TESTE 1.8',
          'TESTE 1.9',
          'TESTE 1.10',
        ],
        [
          'TESTE 1.11',
          'TESTE 1.12',
          'TESTE 1.13',
          'TESTE 1.14',
          'TESTE 1.15',
        ],
      ],
      audiosWords: [
        [
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste4.ogg?alt=media&token=171705de-19fe-424d-b5dd-c1211bef609f',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste5.ogg?alt=media&token=0fe92584-72b4-4fe2-bfb6-8693c4de0473',
          ),
        ],
        [
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste4.ogg?alt=media&token=171705de-19fe-424d-b5dd-c1211bef609f',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste5.ogg?alt=media&token=0fe92584-72b4-4fe2-bfb6-8693c4de0473',
          ),
        ],
        [
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste4.ogg?alt=media&token=171705de-19fe-424d-b5dd-c1211bef609f',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste5.ogg?alt=media&token=0fe92584-72b4-4fe2-bfb6-8693c4de0473',
          ),
        ],
      ],
      allAudiosWords: [
        Audio(
          audio:
              'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
        ),
        Audio(
          audio:
              'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
        ),
        Audio(
          audio:
              'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
        ),
      ],
    ),
    Pronun(
      id: 1,
      title: 'TESTE 1',
      video: ' Video A ',
      words: [
        [
          'TESTE 1.1',
          'TESTE 1.2',
          'TESTE 1.3',
          'TESTE 1.4',
          'TESTE 1.5',
        ],
        [
          'TESTE 1.6',
          'TESTE 1.7',
          'TESTE 1.8',
          'TESTE 1.9',
          'TESTE 1.10',
        ],
        [
          'TESTE 1.11',
          'TESTE 1.12',
          'TESTE 1.13',
          'TESTE 1.14',
          'TESTE 1.15',
        ],
      ],
      audiosWords: [
        [
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste4.ogg?alt=media&token=171705de-19fe-424d-b5dd-c1211bef609f',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste5.ogg?alt=media&token=0fe92584-72b4-4fe2-bfb6-8693c4de0473',
          ),
        ],
        [
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste4.ogg?alt=media&token=171705de-19fe-424d-b5dd-c1211bef609f',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste5.ogg?alt=media&token=0fe92584-72b4-4fe2-bfb6-8693c4de0473',
          ),
        ],
        [
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste4.ogg?alt=media&token=171705de-19fe-424d-b5dd-c1211bef609f',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste5.ogg?alt=media&token=0fe92584-72b4-4fe2-bfb6-8693c4de0473',
          ),
        ],
      ],
      allAudiosWords: [
        Audio(
          audio:
              'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
        ),
        Audio(
          audio:
              'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
        ),
        Audio(
          audio:
              'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
        ),
      ],
    ),
    Pronun(
      id: 2,
      title: 'TESTE 2',
      video: ' Video A ',
      words: [
        [
          'TESTE 2.1',
          'TESTE 2.2',
          'TESTE 2.3',
          'TESTE 2.4',
          'TESTE 2.5',
        ],
        [
          'TESTE 2.6',
          'TESTE 2.7',
          'TESTE 2.8',
          'TESTE 2.9',
          'TESTE 2.10',
        ],
        [
          'TESTE 2.11',
          'TESTE 2.12',
          'TESTE 2.13',
          'TESTE 2.14',
          'TESTE 2.15',
        ],
      ],
      audiosWords: [
        [
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste4.ogg?alt=media&token=171705de-19fe-424d-b5dd-c1211bef609f',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste5.ogg?alt=media&token=0fe92584-72b4-4fe2-bfb6-8693c4de0473',
          ),
        ],
        [
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste4.ogg?alt=media&token=171705de-19fe-424d-b5dd-c1211bef609f',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste5.ogg?alt=media&token=0fe92584-72b4-4fe2-bfb6-8693c4de0473',
          ),
        ],
        [
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste4.ogg?alt=media&token=171705de-19fe-424d-b5dd-c1211bef609f',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste5.ogg?alt=media&token=0fe92584-72b4-4fe2-bfb6-8693c4de0473',
          ),
        ],
      ],
      allAudiosWords: [
        Audio(
          audio:
              'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
        ),
        Audio(
          audio:
              'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
        ),
        Audio(
          audio:
              'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
        ),
      ],
    ),
    Pronun(
      id: 3,
      title: 'TESTE 3',
      video: ' Video A ',
      words: [
        [
          'TESTE 3.1',
          'TESTE 3.2',
          'TESTE 3.3',
          'TESTE 3.4',
          'TESTE 3.5',
        ],
        [
          'TESTE 3.6',
          'TESTE 3.7',
          'TESTE 3.8',
          'TESTE 3.9',
          'TESTE 3.10',
        ],
        [
          'TESTE 3.11',
          'TESTE 3.12',
          'TESTE 3.13',
          'TESTE 3.14',
          'TESTE 3.15',
        ],
      ],
      audiosWords: [
        [
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste4.ogg?alt=media&token=171705de-19fe-424d-b5dd-c1211bef609f',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste5.ogg?alt=media&token=0fe92584-72b4-4fe2-bfb6-8693c4de0473',
          ),
        ],
        [
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste4.ogg?alt=media&token=171705de-19fe-424d-b5dd-c1211bef609f',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste5.ogg?alt=media&token=0fe92584-72b4-4fe2-bfb6-8693c4de0473',
          ),
        ],
        [
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste4.ogg?alt=media&token=171705de-19fe-424d-b5dd-c1211bef609f',
          ),
          Audio(
            audio:
                'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste5.ogg?alt=media&token=0fe92584-72b4-4fe2-bfb6-8693c4de0473',
          ),
        ],
      ],
      allAudiosWords: [
        Audio(
          audio:
              'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
        ),
        Audio(
          audio:
              'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
        ),
        Audio(
          audio:
              'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
        ),
      ],
    ),
  ].obs;
  
  final List<File> _audios = []; // PEGA A LISTA

  final List<String> listUrl = []; // RECEBE AS URLS

  final List<Audio> listAudios = [];

  final List<List<Audio>> audiosWords = []; // RECEBE UMA LISTA DE URLS

  final List<Audio> allAudiosWords = [];

  final List<PronunRequest> listPronun = [];

  final String nivel = "nivel_1"; // PEGAR  O IDIOMA DO DROPDOWN
  String mode = "Pronun"; // PEGAR O MODE DO BTN QUE ABRE O FORM PAGE
  String title = "teste_1"; // PEGAD O TITLE DO TEXTFIELD DO FORM

  // RECEBE UMA LISTA DE URL
  Future<List<File>> stPickMP3FilesPronun() async {
    try {
      // PEGA OS AUDIOS
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.audio,
        allowMultiple: true,
      );

      if (result != null) {
        // LIMPA A LISTA DE AUDIOS ANTES DE RECEBER NOVOS AUDIOS
        _audios.clear();
        // PERCORRE OS AUDIOS E ADD CADA AUDIO NA LISTA
        for (PlatformFile file in result.files) {
          _audios.add(File(file.path!));
        }
      }
    } catch (error) {
      debugPrint('Failed to pick MP3 files: $error');
    }

    // SE A LISTA NÃO TIVER VAZIA || SE HOUVER AUDIO
    if (_audios.isNotEmpty) {
      // PEGA CADA AUDIO E MANDA PARA O MET QUE VAI ENVIAR PARA O FIRE BASE
      for (File file in _audios) {
        String? downloadUrl = await stUploadMP3ToFirebasePronun(file);
        if (downloadUrl != null) {
          debugPrint('MP3 uploaded successfully. Download URL: $downloadUrl');
        } else {
          debugPrint('Failed to upload MP3 to Firebase.');
        }
      }
    } else {
      debugPrint('No MP3 files selected.');
    }

    return _audios;
  }

  // RECEBE O AUDIO E A LISTA QUE VAI ARMAZENAR AS URL
  Future<String?> stUploadMP3ToFirebasePronun(File file) async {
    String urlDownload;
    try {
      // CRIA O NOME DO AUDIO
      String fileName = '${DateTime.now().millisecondsSinceEpoch}.mp3';

      // REFERENCIA DO FIREBASE
      final storageRef = FirebaseStorage.instance.ref();

      // TENTA ENVIAR O AUDIO PARA A PASTA SETADA
      final uploadTask = storageRef
          .child(nivel)
          .child(mode)
          .child('$title/$fileName')
          .putFile(file);

      // urlList.clear();

      // MONITORA O STATUS DO UPLOAD
      uploadTask.snapshotEvents.listen(
        (TaskSnapshot taskSnapshot) async {
          switch (taskSnapshot.state) {
            case TaskState.running:
              // PORCENTAGEM
              final progress = 100.0 *
                  (taskSnapshot.bytesTransferred / taskSnapshot.totalBytes);
              debugPrint("Upload is $progress% complete.");
              break;
            case TaskState.paused:
              debugPrint("Upload is paused.");
              break;
            case TaskState.canceled:
              debugPrint("Upload was canceled");
              break;
            case TaskState.error:
              break;

            case TaskState.success:
              debugPrint(
                  '(  ) (  ) (  ) (  ) (  ) (  ) LIST AUDIOS >>>>> ${_audios.length}');
              // SE O UPLOAD FOI CONCLUIDO, PEGA A URL DO AUDIO
              urlDownload = await taskSnapshot.ref.getDownloadURL();

              // urlList.add(urlDownload);
              // urlList.add(audio);

              if (_audios.length == 3) {
                allAudiosWords.add(Audio(audio: urlDownload));
                debugPrint(' ${allAudiosWords.length}');
              }

              Audio audio = Audio(audio: urlDownload);
              listAudios.add(audio);

              if (listAudios == 5) audiosWords.add(listAudios);

              debugPrint(' ${audiosWords.length}');

            // break;
          }
        },
      );
    } on Exception catch (error) {
      debugPrint('Failed to upload MP3 to Firebase: $error');
      return null;
    }

    return null;
  }

  void savePronunciation(
    Map<String, dynamic> formData,
    BuildContext context,
  ) {
    final newPronun = Pronun(
      id: DateTime.now().microsecondsSinceEpoch,
      title: formData['title'] as String,
      video: formData['video'] as String,
      words: formData['words'] as List<List<String>>,
      audiosWords: audiosWords,
      allAudiosWords: allAudiosWords,
    );

    addPronun(newPronun);
    debugPrint('CREATE NEW PRONUNCIATION >>> $newPronun');
  }

  void addPronun(Pronun pronun) async {
    final res = await http.post(
      Uri.parse('link.json'),
      body: jsonEncode(
        {
          'id': pronun.id,
          'title': pronun.title,
          'video': pronun.video,
          'words': pronun.words as List<List<String>>,
          'audiosWords': pronun.audiosWords as List<List<String>>,
          'allAudiosWords': pronun.allAudiosWords as List<String>,
          'isFavorite': pronun.isFavorite
        },
      ),
    );
    audiosWords.clear;
  }

  Future<void> loadPronun() async {
    listPronun.clear();

    final res = await http.get(Uri.parse('link.json'));

    if (res.body == 'null') return;

    Map<String, dynamic> data = jsonDecode(res.body);

    data.forEach(
      (pronuncId, pronuncValue) {
        listPronun.add(
          PronunRequest.request(
            ref: pronuncId,
            id: pronuncValue['id'],
            title: pronuncValue['title'],
            video: pronuncValue['video'],
            words: (pronuncValue['words'] as List)
                .map((item) => List<String>.from(item.map((i) => i.toString())))
                .toList(),
            audiosWords: (pronuncValue['audiosWords'] as List)
                .map((item) =>
                    List<AudiosWords>.from(item.map((i) => i.toString())))
                .toList(),
            audiosAllWords: List<AudiosAllWords>.from(
                pronuncValue['audiosAllWords'].map((I) => I.toString())),
            isFavorite: pronuncValue['isFavorite'],
          ),
        );
      },
    );
  }
}
