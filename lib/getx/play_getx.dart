import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:pj_teste/model/audio.dart';
import 'package:pj_teste/model/pronun.dart';
import 'package:pj_teste/model/tile.dart';

class PlayGetx extends GetxController {
  RxBool isClosingSection = false.obs;

  RxInt currentTile = 0.obs;

  RxBool showBtnLoop = false.obs;

  RxInt selectedLoop = 5.obs;
  int get numOfLoops => int.parse('$selectedLoop');

  playAudio(AudioPlayer player, Audio audio) async {
    isClosingSection.value = true;
    audio.playerState.value = AudioState.play;

    //Source audio
    Duration time = const Duration();

    for (int i = 0; i < numOfLoops; i++) {
      await player.play(UrlSource(audio.audio));

      await player.getDuration().then((timeOfAudio) {
        // Pega o tempo do audio
        if (timeOfAudio != null) {
          time = timeOfAudio;
        }
      });

      if (isClosingSection.value == false
          // || audio.playerState.value == AudioState.stop
          ) {
        audio.playerState.value = AudioState.stop;
        player.stop();
      }

      // Tempo do audio + 1seg
      await Future.delayed(time + const Duration(seconds: 5)); // 1 or 5

      // isPlaying.value = true;

      // if (i == numberOfLoops) next(tile!);
    }

    audio.playerState.value = AudioState.stop;
    isClosingSection.value = false;
  }

  stopAudio(AudioPlayer player) {
    player.stop();
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
