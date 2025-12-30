import 'package:flutter/material.dart';

void main() {
  runApp(const FinderApp());
}

class FinderApp extends StatelessWidget {
  const FinderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finder AI',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2196F3)), // Finder Blue
      ),
      home: const HomePage(),
    );
  }
}

// SCREEN 1: The Home Dashboard (Placeholder)
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Finder.AI")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Hi Alex, what can we help you with?", style: TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            // Finder Button
            ElevatedButton.icon(
              onPressed: () {
                // Navigate to Camera
                print("Go to Camera");
              },
              icon: const Icon(Icons.camera_alt),
              label: const Text("I Found an Item"),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            // Loser Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _actionButton(Icons.photo, "Gallery"),
                const SizedBox(width: 10),
                _actionButton(Icons.camera, "Snap"),
                const SizedBox(width: 10),
                _actionButton(Icons.text_fields, "Describe"),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _actionButton(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(radius: 25, child: Icon(icon)),
        const SizedBox(height: 5),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}