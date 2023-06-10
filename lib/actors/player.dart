import 'dart:async';

import 'package:flame/components.dart';

class Player extends SpriteAnimationComponent with HasGameRef {
  final double _frameRate = 0.05;

  // Animation for player's idle state
  late final SpriteAnimation _idleAnimation;

  @override
  FutureOr<void> onLoad() {
    _onLoadAnimations(); // Load all Player animations

    // Position player in the center of the screen
    position = gameRef.size / 2 - size / 2;

    // Invoke parent class's onLoad() method to process any remaining events
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

    // Set the current animation to idle animation
    animation = _idleAnimation;
  }
}
