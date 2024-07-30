import 'package:pj_teste/model/audio.dart';
import 'package:pj_teste/model/pronun.dart';

final pronunMock = [
  // Pronun(
  //   id: 1,
  //   title: 'TESTE 1',
  //   video: ' Video A ',
  //   words: [
  //     [
  //       'TESTE 1.1',
  //       'TESTE 1.2',
  //       'TESTE 1.3',
  //       'TESTE 1.4',
  //       'TESTE 1.5',
  //     ],
  //     [
  //       'TESTE 1.6',
  //       'TESTE 1.7',
  //       'TESTE 1.8',
  //       'TESTE 1.9',
  //       'TESTE 1.10',
  //     ],
  //     [
  //       'TESTE 1.11',
  //       'TESTE 1.12',
  //       'TESTE 1.13',
  //       'TESTE 1.14',
  //       'TESTE 1.15',
  //     ],
  //   ],
  //   audiosWords: [
  //     [
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste4.ogg?alt=media&token=171705de-19fe-424d-b5dd-c1211bef609f',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste5.ogg?alt=media&token=0fe92584-72b4-4fe2-bfb6-8693c4de0473',
  //       ),
  //     ],
  //     [
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste4.ogg?alt=media&token=171705de-19fe-424d-b5dd-c1211bef609f',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste5.ogg?alt=media&token=0fe92584-72b4-4fe2-bfb6-8693c4de0473',
  //       ),
  //     ],
  //     [
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste4.ogg?alt=media&token=171705de-19fe-424d-b5dd-c1211bef609f',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste5.ogg?alt=media&token=0fe92584-72b4-4fe2-bfb6-8693c4de0473',
  //       ),
  //     ],
  //   ],
  //   allAudiosWords: [
  //     Audio(
  //       audio:
  //           'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
  //     ),
  //     Audio(
  //       audio:
  //           'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
  //     ),
  //     Audio(
  //       audio:
  //           'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
  //     ),
  //   ],
  // ),
  // Pronun(
  //   id: 1,
  //   title: 'TESTE 1',
  //   video: ' Video A ',
  //   words: [
  //     [
  //       'TESTE 1.1',
  //       'TESTE 1.2',
  //       'TESTE 1.3',
  //       'TESTE 1.4',
  //       'TESTE 1.5',
  //     ],
  //     [
  //       'TESTE 1.6',
  //       'TESTE 1.7',
  //       'TESTE 1.8',
  //       'TESTE 1.9',
  //       'TESTE 1.10',
  //     ],
  //     [
  //       'TESTE 1.11',
  //       'TESTE 1.12',
  //       'TESTE 1.13',
  //       'TESTE 1.14',
  //       'TESTE 1.15',
  //     ],
  //   ],
  //   audiosWords: [
  //     [
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste4.ogg?alt=media&token=171705de-19fe-424d-b5dd-c1211bef609f',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste5.ogg?alt=media&token=0fe92584-72b4-4fe2-bfb6-8693c4de0473',
  //       ),
  //     ],
  //     [
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste4.ogg?alt=media&token=171705de-19fe-424d-b5dd-c1211bef609f',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste5.ogg?alt=media&token=0fe92584-72b4-4fe2-bfb6-8693c4de0473',
  //       ),
  //     ],
  //     [
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste4.ogg?alt=media&token=171705de-19fe-424d-b5dd-c1211bef609f',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste5.ogg?alt=media&token=0fe92584-72b4-4fe2-bfb6-8693c4de0473',
  //       ),
  //     ],
  //   ],
  //   allAudiosWords: [
  //     Audio(
  //       audio:
  //           'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
  //     ),
  //     Audio(
  //       audio:
  //           'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
  //     ),
  //     Audio(
  //       audio:
  //           'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
  //     ),
  //   ],
  // ),
  // Pronun(
  //   id: 2,
  //   title: 'TESTE 2',
  //   video: ' Video A ',
  //   words: [
  //     [
  //       'TESTE 2.1',
  //       'TESTE 2.2',
  //       'TESTE 2.3',
  //       'TESTE 2.4',
  //       'TESTE 2.5',
  //     ],
  //     [
  //       'TESTE 2.6',
  //       'TESTE 2.7',
  //       'TESTE 2.8',
  //       'TESTE 2.9',
  //       'TESTE 2.10',
  //     ],
  //     [
  //       'TESTE 2.11',
  //       'TESTE 2.12',
  //       'TESTE 2.13',
  //       'TESTE 2.14',
  //       'TESTE 2.15',
  //     ],
  //   ],
  //   audiosWords: [
  //     [
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste4.ogg?alt=media&token=171705de-19fe-424d-b5dd-c1211bef609f',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste5.ogg?alt=media&token=0fe92584-72b4-4fe2-bfb6-8693c4de0473',
  //       ),
  //     ],
  //     [
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste4.ogg?alt=media&token=171705de-19fe-424d-b5dd-c1211bef609f',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste5.ogg?alt=media&token=0fe92584-72b4-4fe2-bfb6-8693c4de0473',
  //       ),
  //     ],
  //     [
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste4.ogg?alt=media&token=171705de-19fe-424d-b5dd-c1211bef609f',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste5.ogg?alt=media&token=0fe92584-72b4-4fe2-bfb6-8693c4de0473',
  //       ),
  //     ],
  //   ],
  //   allAudiosWords: [
  //     Audio(
  //       audio:
  //           'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
  //     ),
  //     Audio(
  //       audio:
  //           'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
  //     ),
  //     Audio(
  //       audio:
  //           'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
  //     ),
  //   ],
  // ),
  // Pronun(
  //   id: 3,
  //   title: 'TESTE 3',
  //   video: ' Video A ',
  //   words: [
  //     [
  //       'TESTE 3.1',
  //       'TESTE 3.2',
  //       'TESTE 3.3',
  //       'TESTE 3.4',
  //       'TESTE 3.5',
  //     ],
  //     [
  //       'TESTE 3.6',
  //       'TESTE 3.7',
  //       'TESTE 3.8',
  //       'TESTE 3.9',
  //       'TESTE 3.10',
  //     ],
  //     [
  //       'TESTE 3.11',
  //       'TESTE 3.12',
  //       'TESTE 3.13',
  //       'TESTE 3.14',
  //       'TESTE 3.15',
  //     ],
  //   ],
  //   audiosWords: [
  //     [
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste4.ogg?alt=media&token=171705de-19fe-424d-b5dd-c1211bef609f',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste5.ogg?alt=media&token=0fe92584-72b4-4fe2-bfb6-8693c4de0473',
  //       ),
  //     ],
  //     [
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste4.ogg?alt=media&token=171705de-19fe-424d-b5dd-c1211bef609f',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste5.ogg?alt=media&token=0fe92584-72b4-4fe2-bfb6-8693c4de0473',
  //       ),
  //     ],
  //     [
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste4.ogg?alt=media&token=171705de-19fe-424d-b5dd-c1211bef609f',
  //       ),
  //       Audio(
  //         audio:
  //             'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste5.ogg?alt=media&token=0fe92584-72b4-4fe2-bfb6-8693c4de0473',
  //       ),
  //     ],
  //   ],
  //   allAudiosWords: [
  //     Audio(
  //       audio:
  //           'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste1.ogg?alt=media&token=e6335023-cf74-43a6-ac2c-4087369c5907',
  //     ),
  //     Audio(
  //       audio:
  //           'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste2.ogg?alt=media&token=13255d4b-9e35-4e0e-8149-c090e591cfb8',
  //     ),
  //     Audio(
  //       audio:
  //           'https://firebasestorage.googleapis.com/v0/b/pj-teste-c0701.appspot.com/o/teste%2Fteste3.ogg?alt=media&token=a88f21a1-49e3-4a2e-9762-5460b0cd0ebe',
  //     ),
  //   ],
  // ),
];
