import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:nes_ui/nes_ui.dart';
import 'package:pixel_adventure/dialogs/game_pause_dialog.dart';
import 'package:pixel_adventure/games/map_exploration.dart';
import 'package:pixel_adventure/router.dart';

const String pauseButton = 'pause_button_key';
const String pauseDialog = 'pause_dialog_key';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Flame.device.fullScreen();
  await Flame.device.setLandscape();

  runApp(
    MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: flutterNesTheme(),
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    ),
  );
}
