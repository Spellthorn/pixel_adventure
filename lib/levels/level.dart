import 'dart:async';

import 'package:flame/components.dart';
import 'package:pixel_adventure/games/map_exploration.dart';
import 'package:pixel_adventure/games/pixel_game.dart';
import 'package:pixel_adventure/main.dart';
import 'package:pixel_adventure/utils/collision_block.dart';

abstract class Level extends World with HasGameRef<PixelGame>, HasCollisionDetection {
  late CameraComponent cam;

}