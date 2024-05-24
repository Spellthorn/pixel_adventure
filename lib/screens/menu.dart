import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nes_ui/nes_ui.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: NesContainer(
        width: 420,
        height: 300,
        backgroundColor: Colors.pink,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pause',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            NesButton(
              onPressed: () {
                context.go('/level-01');
              },
              type: NesButtonType.normal,
              child: const Text('Level01'),
            ),
            NesButton(
              onPressed: () => context.go('/level-02'),
              type: NesButtonType.normal,
              child: const Text('Level02'),
            )
          ],
        ),
      ),
    );
  }
}