import 'package:get/get.dart';

class Tile extends GetxController {
  final String tile;
  var isCompleteTile = false.obs;
  var isPlaing2 = false.obs;

  Tile({
    required this.tile,
  });

  Tile.fromJson(Map<String, dynamic> json)
      : tile = json['tile'],
        isCompleteTile = json['isCompleteTile'];

  Map<String, dynamic> toJson() {
    return {
      'tile': tile,
      'isCompleteTile': isCompleteTile,
    };
  }
}
