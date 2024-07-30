import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:pj_teste/accordion/accordion.dart';
import 'package:pj_teste/accordion/build_list_accordion.dart';
import 'package:pj_teste/getx/play_getx.dart';
import 'package:pj_teste/getx/pronunciation_getx.dart';
import 'package:pj_teste/mock/pronun_mock.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final play = PlayGetx();
    final p = PronunGetx2();

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
          )),
    );
  }
}
