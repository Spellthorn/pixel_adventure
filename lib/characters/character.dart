import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:pixel_adventure/games/map_exploration.dart';
import 'package:pixel_adventure/games/pixel_game.dart';

class Character extends SpriteAnimationGroupComponent
    with HasGameRef<PixelGame>, CollisionCallbacks {

  Vector2 _velocity = Vector2.zero();
  Vector2 get velocity => _velocity;

  Character({super.position, super.size});

  void resetVelocity() {
    _velocity = Vector2.zero();
  }
}