import 'package:get/get.dart';

class Audio extends GetxController {
  final String audio;
  Rx<AudioState> playerState = AudioState.stop.obs;

  Audio({
    required this.audio,
  });
}

enum AudioState { play, pause, stop }
