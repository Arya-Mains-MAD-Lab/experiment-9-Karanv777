import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GamePage(),
    );
  }
}

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int score = 0;
  int highScore = 0;
  int timeLeft = 10;

  Timer? timer;
  bool gameRunning = false;

  void startGame() {
    setState(() {
      score = 0;
      timeLeft = 10;
      gameRunning = true;
    });

    timer?.cancel();
    timer = Timer.periodic(const Duration(seconds: 1), (t) {
      setState(() {
        timeLeft--;
      });

      if (timeLeft == 0) {
        endGame();
      }
    });
  }

  void tapButton() {
    if (!gameRunning) return;

    setState(() {
      score++;
    });
  }

  void endGame() {
    timer?.cancel();

    setState(() {
      gameRunning = false;
      if (score > highScore) {
        highScore = score;
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tap Speed Game")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Time Left: $timeLeft", style: const TextStyle(fontSize: 22)),

            const SizedBox(height: 10),

            Text(
              "Score: $score",
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Text(
              "High Score: $highScore",
              style: const TextStyle(fontSize: 18, color: Colors.grey),
            ),

            const SizedBox(height: 30),

            ElevatedButton(onPressed: tapButton, child: const Text("TAP ME")),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: startGame,
              child: Text(gameRunning ? "Restart Game" : "Start Game"),
            ),

            if (!gameRunning && timeLeft == 0)
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Game Over!",
                  style: TextStyle(fontSize: 24, color: Colors.red),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
