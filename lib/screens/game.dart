import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:pixel_adventure/characters/player.dart';
import 'package:pixel_adventure/dialogs/game_pause_dialog.dart';
import 'package:pixel_adventure/games/infinite_runner.dart';
import 'package:pixel_adventure/games/pixel_game.dart';
import 'package:pixel_adventure/levels/level.dart';
import 'package:pixel_adventure/levels/map_level.dart';
import 'package:pixel_adventure/levels/spawning_level.dart';
import 'package:pixel_adventure/main.dart';
import 'package:pixel_adventure/games/map_exploration.dart';

class GameScreen extends StatelessWidget {
  late final Level level;
  late final Player player;
  late final PixelGame game;

  GameScreen({super.key, required String level}) {
    final infiniteLevel = level.toLowerCase().contains('infinite');
    this.level = infiniteLevel ? SpawningLevel() : MapLevel(levelName: level);
    player = Player(character: 'Mask Dude');
    game = infiniteLevel
        ? InfiniteRunner(world: this.level, player: player)
        : MapExploration(world: this.level, player: player);
  }

  @override
  Widget build(BuildContext context) {
    return GameWidget<PixelGame>(
      game: this.game,
      overlayBuilderMap: {
        pauseButton: (context, game) {
          return Positioned(
            right: 10,
            top: 10,
            child: IconButton(
              onPressed: () => pauseGame(game),
              icon: const Icon(
                Icons.pause,
                size: 80,
              ),
            ),
          );
        },
        pauseDialog: (context, game) {
          return GamePauseDialog(
            onResume: () => resumeGame(game),
          );
        }
      },
    );
  }

  void pauseGame(PixelGame game) {
    game.pauseEngine();
    game.overlays.add(pauseDialog);
    game.overlays.remove(pauseButton);
  }

  void resumeGame(PixelGame game) {
    game.overlays.remove(pauseDialog);
    game.overlays.add(pauseButton);
    game.resumeEngine();
  }
}
