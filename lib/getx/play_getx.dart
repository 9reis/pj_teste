import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:pj_teste/model/audio.dart';
import 'package:pj_teste/model/pronun.dart';
import 'package:pj_teste/model/tile.dart';

class PlayGetx extends GetxController {
  RxBool isClosingSection = false.obs;
  RxInt currentTile = 0.obs;
  RxBool showBtnLoop = false.obs;
  RxInt selectedLoop = 2.obs;

  final AudioPlayer audioPlayer = AudioPlayer();

  int get numOfLoops => int.parse('$selectedLoop');

  void playAudio(Audio audio, [int currentLoop = 0]) async {
    isClosingSection.value = true;
    audio.playerState.value = AudioState.play;

    // Source audio
    await audioPlayer.play(UrlSource(audio.audio));

    audioPlayer.onPlayerComplete.listen(
      (event) {
        if (isClosingSection.value == false ||
            audio.playerState.value == AudioState.stop) {
          audio.playerState.value = AudioState.stop;
          audioPlayer.stop();
        } else if (currentLoop < numOfLoops - 1) {
          playAudio(audio, currentLoop + 1);
        } else {
          audio.playerState.value = AudioState.stop;
          isClosingSection.value = false;
        }
      },
    );
  }

  void stopAudio() {
    audioPlayer.stop();
  }

  void stopAudios(Pronun pron) {
    pron.audiosWords!
        .map((item) => item
            .map(
              (a) => a.playerState.value = AudioState.stop,
            )
            .toList())
        .toList();
    pron.allAudiosWords!
        .map(
          (a) => a.playerState.value = AudioState.stop,
        )
        .toList();
  }

  void next(Tile tile) {
    currentTile.value++;

    tile.isCompleteTile.value = true;
  }

  void previous() {
    currentTile.value--;
  }
}
