import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:pixel_adventure/characters/character.dart';
import 'package:pixel_adventure/games/map_exploration.dart';

class PlayableCharacter extends Character with KeyboardHandler {
  
  PlayableCharacter({super.position});
  
}