import 'package:flappy_bird/game/flappy_bird_game.dart';
import 'package:flutter/material.dart';

class GameOver extends StatelessWidget {
  const GameOver({super.key, required this.game});
  final FlappyBirdGame game;
  static const String id = 'gameOver';

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
