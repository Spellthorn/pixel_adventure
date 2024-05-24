import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:pixel_adventure/characters/character.dart';
import 'package:pixel_adventure/games/pixel_adventure.dart';

class PlayableCharacter extends Character with KeyboardHandler {
  
  PlayableCharacter({super.position});

  Vector2 velocity = Vector2.zero();

}