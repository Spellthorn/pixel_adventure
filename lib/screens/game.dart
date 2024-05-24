import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:pixel_adventure/characters/player.dart';
import 'package:pixel_adventure/dialogs/game_pause_dialog.dart';
import 'package:pixel_adventure/levels/level.dart';
import 'package:pixel_adventure/main.dart';
import 'package:pixel_adventure/games/pixel_adventure.dart';

class GameScreen extends StatelessWidget {
  final String level;

  const GameScreen({super.key, required this.level});

  @override
  Widget build(BuildContext context) {
    return GameWidget<PixelAdventure>(
      game: PixelAdventure(
        player: Player(character: 'Mask Dude'),
        world: Level(
          levelName: level,
        ),
      ),
      overlayBuilderMap: {
        pauseButton: (context, game) {
          return Positioned(
            right: 10,
            top: 10,
            child: IconButton(
              onPressed: () {
                game.pauseEngine();
                game.overlays.add(pauseDialog);
                game.overlays.remove(pauseButton);
              },
              icon: const Icon(
                Icons.pause,
                size: 80,
              ),
            ),
          );
        },
        pauseDialog: (context, game) {
          return GamePauseDialog(
            onResume: () {
              game.overlays.remove(pauseDialog);
              game.overlays.add(pauseButton);
              game.resumeEngine();
            },
          );
        }
      },
    );
  }
}
