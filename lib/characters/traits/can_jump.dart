import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:pixel_adventure/characters/playable_character.dart';

mixin CanJump on PlayableCharacter {

  int _jumps = 0;
  bool _jumpInNextFrame = false;

  double get jumpForce => 260;
  int get maxJumps => 2;

  void jump() {
    if (_jumps < maxJumps) {
      _jumpInNextFrame = true;
    }
  }

  void checkShouldJump(double dt) {
    if (!_jumpInNextFrame) {
      return;
    }

    if (game.playSounds) {
      FlameAudio.play('jump.wav', volume: game.soundVolume);
    }
    velocity.y = -jumpForce;
    position.y += velocity.y * dt;
    _jumps++;
    _jumpInNextFrame = false;
  }

  void resetJumps() {
    _jumps = 0;
  }
}