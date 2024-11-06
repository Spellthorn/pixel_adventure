import 'package:pixel_adventure/characters/playable_character.dart';
import 'package:pixel_adventure/utils/collision_block.dart';

mixin CanMoveVertically on PlayableCharacter {

  final double _gravity = 9.8;
  final double _terminalVelocity = 300;
  CollisionBlock? _collidableFromBottom = null;
  CollisionBlock? _collidableFromTop = null;

  set collidableFromBottom(CollisionBlock? newCollidableFromBottom) => _collidableFromBottom = newCollidableFromBottom;
  CollisionBlock? get collidableFromBottom => _collidableFromBottom;
  set collidableFromTop(CollisionBlock? newCollidableFromTop) => _collidableFromTop = newCollidableFromTop;
  CollisionBlock? get collidableFromTop => _collidableFromTop;
  bool get isBlockedOnBottom => _collidableFromBottom != null;
  bool get isBlockedOnTop => _collidableFromTop != null;
  set _verticalSpeed(double newVerticalSpeed) => velocity.y = newVerticalSpeed;
  double get _verticalSpeed => velocity.y;
  bool get isFalling => velocity.y > 0;
  bool get isJumping => velocity.y < 0;
  bool get isIdle => velocity.y == 0;

  void bounce(double bounceHeight) {
    _verticalSpeed = -bounceHeight;
  }

  void resetVerticalMovement() {
    _verticalSpeed = 0;
  }

  void applyGravity(double dt) {
    if (!isBlockedOnBottom) {
      _verticalSpeed += _gravity;
      _verticalSpeed = _verticalSpeed.clamp(-_terminalVelocity, _terminalVelocity);
    }
  }

  void updateVerticalPosition(double dt) {
    if (_verticalSpeed < 0 && !isBlockedOnTop || _verticalSpeed > 0 && !isBlockedOnBottom) {
      position.y += _verticalSpeed * dt;
    }
  }
}