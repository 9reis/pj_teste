import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pj_teste/accordion/accordion_content.dart';
import 'package:pj_teste/accordion/accordion_header.dart';
import 'package:pj_teste/accordion/accordion_section.dart';
import 'package:pj_teste/getx/play_getx.dart';
import 'package:pj_teste/model/pronun.dart';

List<AccordionSection> buildListAccordionSection(
  List<Pronun> list,
  RxBool isClosingSection,
) {
  final List<AccordionSection> listAccordionSection = [];
  final play = PlayGetx();
  List.generate(
    list.length,
    (i) => listAccordionSection.add(
      AccordionSection(
        onOpenSection: () {
          play.stopAudios(list[i]);
          // play.isClosingSection.value = false;
          isClosingSection.value = false;
        },
        onCloseSection: () {
          play.stopAudios(list[i]);
          // play.isClosingSection.value = false;
          isClosingSection.value = false;
        },
        header: AccordionHeader(pronun: list[i]),
        content: AccordionContent(pronun: list[i]),
      ),
    ),
  );

  return listAccordionSection;
}
