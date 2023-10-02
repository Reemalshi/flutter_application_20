import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late VideoPlayerController controller;
  
  @override
  void initState() {
    controller= VideoPlayerController.asset("dataSource")..initialize().then((value) => null);

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VideoPlayer(controller),
       floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              controller.value.isPlaying 
                  ? controller.pause()
                  : controller.play();
            });
          },
          child: Icon(
            controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),

    );
  }
}