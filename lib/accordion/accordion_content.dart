import 'package:flutter/material.dart';
import 'package:pj_teste/accordion/accordion_card.dart';
import 'package:pj_teste/getx/style_getx.dart';
import 'package:pj_teste/model/pronun.dart';
import 'package:pj_teste/widget/btn_icon.dart';

class AccordionContent extends StatelessWidget {
  final Pronun pronun;

  const AccordionContent({
    super.key,
    required this.pronun,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final style = StyleGetx();

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 5),
          child: BtnIcon(
            icon: Icons.video_collection_sharp,
            color: style.themeText,
            func: () {
              print('${pronun.video}');
            },
          ),
        ),
        //
        AccordionCard(
          pronun2: pronun,
          words: pronun.words![0],
          audioWord: pronun.audiosWords![0],
          allAudioWords: pronun.allAudiosWords![0],
        ),
        SizedBox(height: size.height * 0.01),
        AccordionCard(
          pronun2: pronun,
          words: pronun.words![1],
          audioWord: pronun.audiosWords![1],
          allAudioWords: pronun.allAudiosWords![1],
        ),

        SizedBox(height: size.height * 0.01),
        AccordionCard(
          pronun2: pronun,
          words: pronun.words![2],
          audioWord: pronun.audiosWords![2],
          allAudioWords: pronun.allAudiosWords![2],
        ),
      ],
    );
  }
}
