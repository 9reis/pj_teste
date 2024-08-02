import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'package:pj_teste/getx/play_getx.dart';
import 'package:pj_teste/getx/style_getx.dart';
import 'package:pj_teste/utils/show_snack_bar.dart';
import 'package:pj_teste/model/audio.dart';
import 'package:pj_teste/model/pronun.dart';
import 'package:pj_teste/widget/btn_icon.dart';
import 'package:pj_teste/widget/btn_text.dart';

class AccordionCard extends StatefulWidget {
  final List<String> words;
  final List<Audio> audioWord;
  final Audio allAudioWords;
  final Pronun pronun2;

  const AccordionCard({
    super.key,
    required this.pronun2,
    required this.words,
    required this.audioWord,
    required this.allAudioWords,
  });

  @override
  State<AccordionCard> createState() => _AccordionCardState();
}

class _AccordionCardState extends State<AccordionCard> {
  final play = Get.find<PlayGetx>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final style = StyleGetx();

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 3),
                height: size.height * 0.09,
                decoration: BoxDecoration(
                  color: style.themeSecondary,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (int i = 0; i < widget.words.length; i++)
                            Obx(() {
                              return Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: BtnText(
                                  width: 110,
                                  text: widget.words[i],
                                  color:
                                      widget.audioWord[i].playerState.value ==
                                              AudioState.play
                                          ? Colors.green
                                          : style.kAccentColor,
                                  func: () {
                                    play.stopAudios(widget.pronun2);
                                    play.isClosingSection.value = true;
                                    play.playAudio(widget.audioWord[i]);
                                    showSnackBar(context, widget.words[i], 30);
                                  },
                                ),
                              );
                            }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // play audio to firebase flutter
            Obx(
              () {
                return Padding(
                  padding: const EdgeInsets.only(right: 0, left: 2),
                  child: BtnIcon(
                    icon: widget.allAudioWords.playerState.value ==
                            AudioState.play
                        ? Icons.pause_circle
                        : Icons.play_circle,
                    color: widget.allAudioWords.playerState.value ==
                            AudioState.play
                        ? Colors.red
                        : Colors.green,
                    func: () {
                      play.stopAudios(widget.pronun2);
                      play.isClosingSection.value = true;
                      play.playAudio(widget.allAudioWords);
                      showSnackBar(
                        context,
                        '${widget.words[0]} - ${widget.words[1]} - ${widget.words[2]} - ${widget.words[3]} - ${widget.words[4]}',
                        60,
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
