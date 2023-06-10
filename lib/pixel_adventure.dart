import 'dart:async';

import 'package:flame/game.dart';
import 'package:pixel_adventure/actors/player.dart';

class PixelAdventure extends FlameGame {
  final Player _player = Player();
  @override
  FutureOr<void> onLoad() async {
    // Grab and cache all images
    await images.loadAllImages();

    // Add player to the game
    add(_player);

    // Return the rest onload events
    return super.onLoad();
  }
}
