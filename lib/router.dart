import 'package:go_router/go_router.dart';
import 'package:pixel_adventure/screens/game.dart';
import 'package:pixel_adventure/screens/menu.dart';

final router = GoRouter(
  initialLocation: '/menu',
  routes: [
    GoRoute(
      path: '/menu',
      builder: (context, state) => const Menu(),
    ),
    GoRoute(
      path: '/level-01',
      builder: (context, state) => const GameScreen(level: 'Level-01',)
    ),
    GoRoute(
      path: '/level-02',
        builder: (context, state) => const GameScreen(level: 'Level-02',)
    )
  ],
);
