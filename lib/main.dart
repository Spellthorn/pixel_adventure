import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:pixel_adventure/pixel_adventure.dart';

// Entry point of the application
void main() {
  // Ensure Flutter is initialized before running the app
  WidgetsFlutterBinding.ensureInitialized();
  // Changes mobile to fullscreen
  Flame.device.fullScreen();
  // Changes mobile layout to Landscape
  Flame.device.setLandscape();

  // Create an instance of the Pixel Adventure game
  PixelAdventure game = PixelAdventure();

  // Run the game as a Flutter app using the GameWidget
  runApp(GameWidget(game: game));
}
