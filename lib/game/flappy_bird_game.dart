// ignore_for_file: no_logic_in_create_state
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flappy_bird/components/components.dart';
import 'package:flappy_bird/core/constants/game_config.dart';
import 'package:flutter/material.dart';

class FlappyBirdGame extends FlameGame with TapDetector, HasCollisionDetection {
  late Bird bird;
  late TextComponent score;
  Timer interval = Timer(GameConfig.pipeInterval, repeat: true);
  bool isHit = false;

  @override
  Future<void> onLoad() async {
    addAll(
        [Background(), Ground(), bird = Bird(), Pipes(), score = buildScore()]);
    interval.onTick = () => add(Pipes());
  }

  TextComponent buildScore() {
    return TextComponent(
        position: Vector2(size.x / 2, size.y / 2 * 0.2),
        anchor: Anchor.center,
        textRenderer: TextPaint(
          style: const TextStyle(
              fontSize: 40, fontFamily: 'Game', fontWeight: FontWeight.bold),
        ));
  }

  @override
  void onTap() {
    super.onTap();
    bird.fly();
  }

  @override
  void update(double dt) {
    super.update(dt);
    interval.update(dt);
    score.text = 'Score: ${bird.score}';
  }
}


// class FlappyBirdGame <T extends Game> extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() {
//     throw UnimplementedError();
//   }

// }
