import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portpolio_web_site/Controller/home_controller.dart';

class PlayVideo extends StatelessWidget {
  final Size size;

  PlayVideo(this.size);

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
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(
                            height: 10,
                          ),
                          Text("loading"),
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
