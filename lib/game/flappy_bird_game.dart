// ignore_for_file: no_logic_in_create_state
import 'package:flame/game.dart';
import 'package:flappy_bird/components/background.dart';
import 'package:flappy_bird/components/bird.dart';
import 'package:flappy_bird/components/ground.dart';

class FlappyBirdGame extends FlameGame {
  late Bird bird;
  @override
  Future<void> onLoad() async {
    addAll([Background(), Ground(), bird]);
  }
}

// class FlappyBirdGame <T extends Game> extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() {
//     throw UnimplementedError();
//   }

// }
