import 'dart:math';
import 'package:flame/components.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flappy_bird/components/pipe.dart';
import 'package:flappy_bird/core/constants/constants.dart';
import 'package:flappy_bird/core/enums/enums.dart';
import 'package:flappy_bird/game/flappy_bird_game.dart';

class Pipes extends PositionComponent with HasGameRef<FlappyBirdGame> {
  Pipes();

  final _random = Random();

  @override
  Future<void> onLoad() async {
    position.x = gameRef.size.x;
    final heightMinusGround = gameRef.size.y - GameConfig.groundHeight;
    final spacing = 100 + _random.nextDouble() * (heightMinusGround / 4);
    final centerY =
        spacing + _random.nextDouble() * (heightMinusGround - spacing);

    addAll([
      Pipe(height: centerY - spacing / 2, pipePosition: PipePosition.top),
      Pipe(
          height: heightMinusGround - (centerY + spacing / 2),
          pipePosition: PipePosition.bottom),
    ]);
  }

  void updateScore() {
    gameRef.bird.score += 1;
    FlameAudio.play(Assets.point);
  }

  @override
  void update(double dt) {
    super.update(dt);
    position.x == GameConfig.gameSpeed * dt;
    if (position.x < -10) {
      removeFromParent();
      updateScore();
    }
    if (gameRef.isHit) {
      removeFromParent();
      gameRef.isHit = false;
    }
  }
}
