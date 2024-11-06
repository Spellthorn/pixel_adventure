import 'package:pixel_adventure/characters/character.dart';
import 'package:pixel_adventure/utils/collision_block.dart';

mixin CanMoveHorizontally on Character {
  double moveSpeed = 100;
  CollisionBlock? _collidableFromLeft;
  CollisionBlock? _collidableFromRight;

  CollisionBlock? get collidableFromLeft => _collidableFromLeft;
  set collidableFromLeft(CollisionBlock? newCollidableFromLeft) => _collidableFromLeft = newCollidableFromLeft;
  CollisionBlock? get collidableFromRight => _collidableFromRight;
  set collidableFromRight(CollisionBlock? newCollidableFromRight) => _collidableFromRight = newCollidableFromRight;
  bool get isBlockedOnRight => _collidableFromRight != null;
  bool get isBlockedOnLeft => _collidableFromLeft != null;
  double get _horizontalMove => velocity.x;
  set horizontalMove(double newHorizontalSpeed) => velocity.x = newHorizontalSpeed;
  bool get isRunning => _horizontalMove != 0;
  bool get isGoingRight => _horizontalMove > 0;
  bool get isGoingLeft => _horizontalMove < 0;

  void moveRight() {
    if (!isBlockedOnRight) {
      horizontalMove = moveSpeed;
    }
  }

  void moveLeft() {
    if (!isBlockedOnLeft) {
      horizontalMove = -moveSpeed;
    }
  }

  void resetHorizontalMove() {
    horizontalMove = 0;
  }

  void updateHorizontalPosition(double dt) {
    if (_horizontalMove < 0 && !isBlockedOnLeft || _horizontalMove > 0 && !isBlockedOnRight) {
      position.x += _horizontalMove * dt;
    }
  }
}