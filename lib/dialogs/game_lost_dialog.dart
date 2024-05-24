import 'package:flutter/material.dart';
import 'package:nes_ui/nes_ui.dart';

class GameLostDialog extends StatelessWidget {
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
              'Spierdoliłeś!',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              'Przegrałeś level szybciej ni byliśmy w stanie to policzyć xd',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            NesButton(
              onPressed: () {
              },
              type: NesButtonType.normal,
              child: const Text('Level selection'),
            ),
          ],
        ),
      ),
    );
  }
}