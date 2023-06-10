import 'dart:async';

import 'package:flame/components.dart';

class Player extends SpriteAnimationComponent with HasGameRef {
  final double _frameRate = 0.05;
  // All our Sprite Animations
  late final SpriteAnimation _idleAnimation;

  @override
  FutureOr<void> onLoad() {
    // Load all Player animations
    _onLoadAnimations();

    //Position player in center of screen
    position = gameRef.size / 2 - size / 2;

    // return the rest onload events
    return super.onLoad();
  }

  void _onLoadAnimations() {
    // Create idle animation from spritesheet
    _idleAnimation = SpriteAnimation.fromFrameData(
      game.images.fromCache('Main Characters/Ninja Frog/Idle (32x32).png'),
      SpriteAnimationData.sequenced(
        amount: 11,
        stepTime: _frameRate,
        textureSize: Vector2.all(32),
      ),
    );

    // Set our current animation to idle animation
    animation = _idleAnimation;
  }
}
