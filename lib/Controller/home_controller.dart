import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class HomeController extends GetxController {
  bool showAll = true;
  bool showComplex = false;
  RxBool showComplete = false.obs;
  RxBool showAnother = false.obs;

  showAllProject(bool show) {
    showAll = show;
    update();
  }

  showComplexProject(bool show) {
    showComplex = show;
    update();
  }

  //Video plear..
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  @override
  void onInit() {
    initializedPlayer();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    videoPlayerController.dispose();
    chewieController!.dispose();
    super.onClose();
  }

  Future<void> initializedPlayer() async {
    // videoPlayerController = VideoPlayerController.network(
    //     "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4");
    videoPlayerController =
        VideoPlayerController.asset("assets/videos/dog.mp4");

    await Future.wait([videoPlayerController.initialize()]);
    print("initialize");
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
      materialProgressColors: ChewieProgressColors(
        backgroundColor: Colors.black,
        handleColor: Colors.amber,
        playedColor: Colors.red,
        bufferedColor: Colors.blueAccent,
      ),
      placeholder: Container(
        color: Colors.black,
      ),
      autoInitialize: true,
    );
    print("initialize 2");
    update();
  }
}
