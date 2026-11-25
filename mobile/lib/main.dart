import 'package:flutter/material.dart';

void main() {
  runApp(const FridgeQuestApp());
}

class FridgeQuestApp extends StatelessWidget {
  const FridgeQuestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FridgeQuest',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF87AD91),
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFFFF7E8),
        useMaterial3: true,
      ),
      home: const FridgeQuestHomePage(),
    );
  }
}

class FridgeQuestHomePage extends StatelessWidget {
  const FridgeQuestHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FridgeQuest'),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Your food has a story.', style: TextStyle(fontSize: 24)),
              const SizedBox(height: 16),
              Text(
                'Dein Kühlschrank-Abenteuer beginnt hier.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
