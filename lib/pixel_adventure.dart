import 'dart:async';

import 'package:flame/game.dart';
import 'package:pixel_adventure/actors/player.dart';

class PixelAdventure extends FlameGame {
  final Player _player = Player();
  @override
  FutureOr<void> onLoad() async {
    // Load and cache all images for efficient access during gameplay
    await images.loadAllImages();

    // Add the player character to the game scene
    add(_player);

    // Retrieve and return the remaining onload events by invoking the parent class's onLoad() method.
    // This ensures that any additional onload events registered by the parent class are properly processed.
    return super.onLoad();
  }
}
