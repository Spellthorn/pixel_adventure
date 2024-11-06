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
      path: '/level-:levelNumber',
      builder: (context, state) => GameScreen(level: 'Level-${state.pathParameters['levelNumber']}',)
    ),
    GoRoute(
      path: '/infinite-runner',
      builder: (context, state) => GameScreen(level: 'Infinite-level')
    )
  ],
);
