import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protfolio_web_app/Controller/home_controller.dart';
import 'package:protfolio_web_app/constants.dart';
import 'package:protfolio_web_app/onHover.dart';
import 'dart:math' as pi;

class SemiWhitePortion extends StatefulWidget {
  final Size size;
  const SemiWhitePortion({required this.size, super.key});

  @override
  State<SemiWhitePortion> createState() => _SemiWhitePortionState();
}

class _SemiWhitePortionState extends State<SemiWhitePortion> {
  //final HomeController controller = Get.put(HomeController());
  final ScrollController _scrollController1 = ScrollController();

  List<String> appUis = [
    // 'https://uizard.io/static/4e014ea188f3c9673da99a84bfcdbb38/a8e47/114e4f2e9bc8c445213e504231ffb79ca627d84f-1440x835.png',
    'https://assets.justinmind.com/wp-content/uploads/2022/06/travel-template-1-justinmind.png',
    // 'https://freebiefy.com/wp-content/uploads/2020/10/Free-Beauty-App-UI-Kit-Freebiefy-com.jpg',
    'https://assets.justinmind.com/wp-content/uploads/2022/06/smart-home-app-ui.png',
    'https://assets.justinmind.com/wp-content/uploads/2022/06/mobile-app-templates-justinmind-768x492.png',
    'https://s3-alpha.figma.com/hub/file/4210100113/701f36a5-4b41-42b2-8e5f-e5b2039f6c73-cover.png',
    'https://assets.justinmind.com/wp-content/uploads/2022/06/travel-template-1-justinmind.png',
    'https://assets.justinmind.com/wp-content/uploads/2022/06/smart-home-app-ui.png',
    'https://assets.justinmind.com/wp-content/uploads/2022/06/smart-home-app-ui.png',
    'https://assets.justinmind.com/wp-content/uploads/2022/06/mobile-app-templates-justinmind-768x492.png',

  ];

  final List<String> allImages = [
    "assets/images/app-ui.jpg",
    "assets/images/Financial.jpg",
    "assets/images/ui.jpg",
    "assets/images/Financial.jpg",
    "assets/images/ui.jpg",
    "assets/images/app-ui.jpg",
    "assets/images/app-ui.jpg",
    "assets/images/Financial.jpg",
    "assets/images/ui.jpg",
    "assets/images/Financial.jpg",
    "assets/images/ui.jpg",
    "assets/images/app-ui.jpg",
  ];

  final List<String> complexUi = [
    "assets/images/Financial.jpg",
    "assets/images/ui.jpg",
    "assets/images/Financial.jpg",
    "assets/images/ui.jpg",
    "assets/images/Financial.jpg",
    "assets/images/ui.jpg",
    "assets/images/app-ui.jpg",
  ];

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      double minScrollExtent1 = _scrollController1.position.minScrollExtent;
      double maxScrollExtent1 = _scrollController1.position.maxScrollExtent;
      //
      animateToMaxMin(maxScrollExtent1, minScrollExtent1, maxScrollExtent1, 50, _scrollController1);
    });
  }

  void animateToMaxMin(double max, double min, double direction, int seconds, ScrollController scrollController) {
    scrollController.animateTo(direction, duration: Duration(seconds: seconds), curve: Curves.linear)
        .then((value) {
      direction = direction == max ? min : max;
      animateToMaxMin(max, min, direction, seconds, scrollController);
    });
  }

  @override
  void dispose() {

    _scrollController1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) => SizedBox(
        // height: size.height,
        width: widget.size.width,
        child: Stack(
          children: [
            Positioned(
              top: -450,
              right: 150,
              child: Container(
                height: 700,
                width: 700,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(700),
                  //color: Colors.white,
                  border: Border.all(color: backgroundColor, width: 100),
                ),
              ),
            ),
            Positioned(
              top: 1000,
              left: -350,
              child: Container(
                height: 700,
                width: 700,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(700),
                  //color: Colors.white,
                  border: Border.all(color: backgroundColor, width: 100),
                ),
              ),
            ),
            Positioned(
              left: 250,
              top: 300,
              child: SizedBox(
                width: widget.size.width * 0.45,
                child: Text(
                  "my portfolio",
                  style: GoogleFonts.poppins(
                    color: backgroundColor.withOpacity(0.05),
                    fontSize: 170,
                    fontWeight: FontWeight.w900,
                    textStyle: const TextStyle(height: 0.9, letterSpacing: 1),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 50,
              bottom: 500,
              child: SizedBox(
                width: widget.size.width * 0.45,
                child: Text(
                  "tools i use",
                  style: GoogleFonts.poppins(
                    color: backgroundColor.withOpacity(0.05),
                    fontSize: 170,
                    fontWeight: FontWeight.w900,
                    textStyle: const TextStyle(height: 0.9, letterSpacing: 1),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -250,
              right: -150,
              child: Container(
                height: 700,
                width: 700,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(700),
                  //color: Colors.white,
                  border: Border.all(color: backgroundColor, width: 100),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 500, left: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 350),
                    child: Column(children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: backgroundColor, width: 10),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "portfolio",
                              style: GoogleFonts.poppins(
                                  color: backgroundColor,
                                  fontSize: 50,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(width: 50),

                            SizedBox(
                              width: 500,
                              child: Text(
                                "this is my personal information and all the information are correct. Here I also descuss about my projects.",
                                style: GoogleFonts.poppins(
                                  color: Colors.black.withOpacity(0.9),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 50),

                      SizedBox(
                        width: widget.size.width * 0.4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            OnHoverButton(
                              child: InkWell(
                                onTap: () {
                                  // controller.showAll.value =
                                  //     !controller.showAll.value;

                                  // print(
                                  //     " show all design ${controller.showAll.value}");
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: controller.showAll == true
                                        ? backgroundColor
                                        : backgroundColor.withOpacity(0.1),
                                  ),
                                  child: Text(
                                    "All",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: controller.showAll == true
                                            ? Colors.white
                                            : backgroundColor),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                // controller.showComplex.value =
                                //     !controller.showComplex.value;
                                // controller.showAll.value =
                                //     !controller.showAll.value;

                                // print(
                                //     "show complex ${controller.showComplex.value}");
                              },
                              child: OnHoverButton(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: controller.showComplex == true
                                        ? backgroundColor
                                        : backgroundColor.withOpacity(0.1),
                                  ),
                                  child: Text(
                                    "Complex UI",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: controller.showComplex == true
                                            ? Colors.white
                                            : backgroundColor),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                // controller.showComplex.value =
                                //     !controller.showComplex.value;

                                // controller.showComplete.value =
                                //     !controller.showComplete.value;

                                // print(
                                //     "show complete ${controller.showComplete.value}");
                              },
                              child: OnHoverButton(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: controller.showComplete.value == true
                                        ? backgroundColor
                                        : backgroundColor.withOpacity(0.1),
                                  ),
                                  child: Text(
                                    "Complete project",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: controller.showComplete.value == true
                                            ? Colors.white
                                            : backgroundColor),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                // controller.showComplete.value =
                                //     !controller.showComplete.value;
                                // controller.showAnother.value =
                                //     !controller.showAnother.value;

                                // print(controller.showAnother.value);
                              },
                              child: OnHoverButton(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: controller.showAnother.value == true
                                        ? backgroundColor
                                        : backgroundColor.withOpacity(0.1),
                                  ),
                                  child: Text(
                                    "Another",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: controller.showAnother.value == true
                                            ? Colors.white
                                            : backgroundColor),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 50),

                      Visibility(
                        visible: false, // true
                        child: Container(
                          margin: const EdgeInsets.only(left: 70),
                          width: widget.size.width * 0.5,
                          child: GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: allImages.length,
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20,
                              ),
                              itemBuilder: (context, index) {
                                return Image.asset(allImages[index]);
                              }),
                        ),
                      ),

                      Visibility(
                        visible: true, //
                        child: Container(
                          width: widget.size.width * 0.5,
                          margin: const EdgeInsets.only(left: 70),
                          child: GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: complexUi.length,
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20,
                              ),
                              itemBuilder: (context, index) {
                                return Image.asset(complexUi[index]);
                              }),
                        ),
                      ),
                    ]),
                  ),


                  SizedBox(
                    height: widget.size.height * 0.5,
                  ),

                  SizedBox(
                    height: 400, width: widget.size.width,
                    // color: Colors.greenAccent,
                    child: ListView.builder(
                        controller: _scrollController1,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: appUis.length,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: Colors.white),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: CachedNetworkImage(
                                imageUrl: appUis[index], width: 500, fit: BoxFit.cover,
                                placeholder: (context, url) => const CircularProgressIndicator(),
                                errorWidget: (context, url, error) => const Icon(Icons.error),
                              ),
                            ),
                          );
                        }),
                  ),

                  // Container(
                  //   // width: size.width * 0.45,
                  //   margin: const EdgeInsets.only(left: 70),
                  //   child: Row(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Column(
                  //         children: [
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //             children: [
                  //               SizedBox(
                  //                 height: 100,
                  //                 width: 200,
                  //                 child: Image.asset(
                  //                   "assets/images/Flutter.png",
                  //                   fit: BoxFit.contain,
                  //                 ),
                  //               ),
                  //               const SizedBox(width: 5),
                  //
                  //               SizedBox(
                  //                 height: 100,
                  //                 width: 200,
                  //                 child: Image.asset(
                  //                   "assets/images/firebase.png",
                  //                   fit: BoxFit.contain,
                  //                 ),
                  //               ),
                  //               const SizedBox(width: 5),
                  //
                  //               SizedBox(
                  //                 height: 100,
                  //                 width: 200,
                  //                 child: Image.asset(
                  //                   "assets/images/Flutter.png",
                  //                   fit: BoxFit.contain,
                  //                 ),
                  //               )
                  //             ],
                  //           ),
                  //           const SizedBox(height: 5),
                  //
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //             children: [
                  //               SizedBox(
                  //                 height: 100,
                  //                 width: 200,
                  //                 child: Image.asset(
                  //                   "assets/images/Flutter.png",
                  //                   fit: BoxFit.contain,
                  //                 ),
                  //               ),
                  //               SizedBox(
                  //                 width: 5,
                  //               ),
                  //               Container(
                  //                 height: 100,
                  //                 width: 200,
                  //                 child: Image.asset(
                  //                   "assets/images/Flutter.png",
                  //                   fit: BoxFit.contain,
                  //                 ),
                  //               ),
                  //               SizedBox(
                  //                 width: 5,
                  //               ),
                  //               Container(
                  //                 height: 100,
                  //                 width: 200,
                  //                 child: Image.asset(
                  //                   "assets/images/Flutter.png",
                  //                   fit: BoxFit.contain,
                  //                 ),
                  //               )
                  //             ],
                  //           ),
                  //           const SizedBox(height: 5),
                  //
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //             children: [
                  //               SizedBox(
                  //                 height: 100,
                  //                 width: 200,
                  //                 child: Image.asset(
                  //                   "assets/images/Flutter.png",
                  //                   fit: BoxFit.contain,
                  //                 ),
                  //               ),
                  //               SizedBox(
                  //                 width: 5,
                  //               ),
                  //               Container(
                  //                 height: 100,
                  //                 width: 200,
                  //                 child: Image.asset(
                  //                   "assets/images/Flutter.png",
                  //                   fit: BoxFit.contain,
                  //                 ),
                  //               ),
                  //               SizedBox(
                  //                 width: 5,
                  //               ),
                  //               Container(
                  //                 height: 100,
                  //                 width: 200,
                  //                 child: Image.asset(
                  //                   "assets/images/Flutter.png",
                  //                   fit: BoxFit.contain,
                  //                 ),
                  //               )
                  //             ],
                  //           )
                  //         ],
                  //       ),
                  //       const SizedBox(width: 50),
                  //
                  //       Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Container(
                  //             height: 100,
                  //             width: 100,
                  //             decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(50),
                  //               border: Border.all(
                  //                   color: backgroundColor, width: 10),
                  //             ),
                  //           ),
                  //           Text(
                  //             "tools",
                  //             style: GoogleFonts.poppins(
                  //                 color: backgroundColor,
                  //                 fontSize: 50,
                  //                 fontWeight: FontWeight.w600),
                  //           ),
                  //           SizedBox(
                  //             width: size.width * 0.2,
                  //             child: Text(
                  //               "this is my personal information and all the information are correct. Here I also descuss about my projects.",
                  //               style: GoogleFonts.poppins(
                  //                   color: Colors.black.withOpacity(0.9),
                  //                   fontSize: 18,
                  //                   fontWeight: FontWeight.w300),
                  //             ),
                  //           )
                  //         ],
                  //       )
                  //     ],
                  //   ),
                  // ),
                  SizedBox(height: widget.size.height * 0.3),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
