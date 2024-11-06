import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:pixel_adventure/characters/player.dart';
import 'package:pixel_adventure/levels/level.dart';
import 'package:pixel_adventure/levels/map_level.dart';

class PixelGame extends FlameGame with HasKeyboardHandlerComponents {

  final Player player;
  Level world;
  bool playSounds = true;
  double soundVolume = 1.0;

  PixelGame({required this.player, required this.world});
}