import 'package:flutter/material.dart';

class SetButton extends StatelessWidget {
  const SetButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Show your popup or navigate to the set screen
        showDialog(
          context: context,
          builder: (BuildContext context) {
            // Return your custom set screen or popup widget
            return const SetScreen();
          },
        );
      },
      child: const Text('Set'),
    );
  }
}

class SetScreen extends StatelessWidget {
  const SetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Build your set screen UI here
    return AlertDialog(
      title: const Text('Set Orders'),
      content: const Column(
        // Add UI elements for regular, lieutenant, irregular, and impetuous orders
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            // Handle set button press
            // You may need to pass data back to PlayScreen
            Navigator.pop(context);
          },
          child: const Text('Set'),
        ),
        ElevatedButton(
          onPressed: () {
            // Handle close button press
            Navigator.pop(context);
          },
          child: const Text('Close'),
        ),
      ],
    );
  }
}