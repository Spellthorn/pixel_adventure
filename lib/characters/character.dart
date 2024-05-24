import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:pixel_adventure/games/pixel_adventure.dart';

class Character extends SpriteAnimationGroupComponent
    with HasGameRef<PixelAdventure>, CollisionCallbacks {

  Character({super.position, super.size});
}