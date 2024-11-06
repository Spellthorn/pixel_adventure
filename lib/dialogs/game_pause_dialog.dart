import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:nes_ui/nes_ui.dart';

class GamePauseDialog extends StatelessWidget {
  void Function() onResume;

  GamePauseDialog({super.key, required this.onResume});

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
                context.go('/menu');
              },
              type: NesButtonType.normal,
              child: const Text('Level selection'),
            ),
            const SizedBox(height: 16),
            NesButton(
              onPressed: () {
                onResume();
              },
              type: NesButtonType.normal,
              child: const Text('Resume'),
            ),
          ],
        ),
      ),
    );
  }
}
