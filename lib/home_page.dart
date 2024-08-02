import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pj_teste/accordion/accordion.dart';
import 'package:pj_teste/accordion/build_list_accordion.dart';
import 'package:pj_teste/getx/play_getx.dart';
import 'package:pj_teste/getx/pronunciation_getx.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final play = Get.put(PlayGetx());
    final p = Get.put(PronunGetx2());

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Teste'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Flexible(
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Accordion(
                    maxOpenSections: 1,
                    children: buildListAccordionSection(
                        p.listPron, play.isClosingSection),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
