import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protfolio_web_app/Controller/home_controller.dart';

class PlayVideo extends StatelessWidget {
  final Size size;

  const PlayVideo(this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Container(
            width: size.width * 0.6,
          ),
          Container(
            height: 500,
            width: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: GetBuilder<HomeController>(
              init: HomeController(),
              builder: (controller) => Center(
                child: controller.chewieController != null &&
                        controller.chewieController!.videoPlayerController.value
                            .isInitialized
                    ? Chewie(controller: controller.chewieController!)
                    : const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(
                            height: 10,
                          ),
                          Text("loading.."),
                        ],
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
