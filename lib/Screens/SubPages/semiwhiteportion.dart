import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portpolio_web_site/Controller/home_controller.dart';
import 'package:portpolio_web_site/constants.dart';
import 'package:portpolio_web_site/onHover.dart';

class SemiWhitePortion extends StatelessWidget {
  final Size size;
  SemiWhitePortion(this.size);

  //final HomeController controller = Get.put(HomeController());
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
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) => Container(
        // height: size.height,
        width: size.width,
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
              child: Container(
                width: size.width * 0.45,
                child: Text(
                  "my portfolio",
                  style: GoogleFonts.poppins(
                    color: backgroundColor.withOpacity(0.05),
                    fontSize: 170,
                    fontWeight: FontWeight.w900,
                    textStyle: TextStyle(
                      height: 0.9,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 50,
              bottom: 500,
              child: Container(
                width: size.width * 0.45,
                child: Text(
                  "tools i use",
                  style: GoogleFonts.poppins(
                    color: backgroundColor.withOpacity(0.05),
                    fontSize: 170,
                    fontWeight: FontWeight.w900,
                    textStyle: TextStyle(
                      height: 0.9,
                      letterSpacing: 1,
                    ),
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
              padding: EdgeInsets.only(top: 500, left: 350),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          width: 500,
                          child: Text(
                            "this is my personal information and all the information are correct. Here I also descuss about my projects.",
                            style: GoogleFonts.poppins(
                                color: Colors.black.withOpacity(0.9),
                                fontSize: 18,
                                fontWeight: FontWeight.w300),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: size.width * 0.4,
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
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
                  SizedBox(
                    height: 50,
                  ),
                  Visibility(
                    visible: false, // true
                    child: Container(
                      margin: EdgeInsets.only(left: 70),
                      width: size.width * 0.5,
                      child: GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: allImages.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                          ),
                          itemBuilder: (context, index) {
                            return Container(
                              child: Image.asset(
                                allImages[index],
                              ),
                            );
                          }),
                    ),
                  ),
                  Visibility(
                    visible: true, //
                    child: Container(
                      width: size.width * 0.5,
                      margin: EdgeInsets.only(left: 70),
                      child: GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: complexUi.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                          ),
                          itemBuilder: (context, index) {
                            return Container(
                              child: Image.asset(
                                complexUi[index],
                              ),
                            );
                          }),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.5,
                  ),
                  Container(
                    // width: size.width * 0.45,
                    margin: EdgeInsets.only(left: 70),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 100,
                                  width: 200,
                                  child: Image.asset(
                                    "assets/images/Flutter.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 100,
                                  width: 200,
                                  child: Image.asset(
                                    "assets/images/firebase.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 100,
                                  width: 200,
                                  child: Image.asset(
                                    "assets/images/Flutter.png",
                                    fit: BoxFit.contain,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 100,
                                  width: 200,
                                  child: Image.asset(
                                    "assets/images/Flutter.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 100,
                                  width: 200,
                                  child: Image.asset(
                                    "assets/images/Flutter.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 100,
                                  width: 200,
                                  child: Image.asset(
                                    "assets/images/Flutter.png",
                                    fit: BoxFit.contain,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 100,
                                  width: 200,
                                  child: Image.asset(
                                    "assets/images/Flutter.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 100,
                                  width: 200,
                                  child: Image.asset(
                                    "assets/images/Flutter.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 100,
                                  width: 200,
                                  child: Image.asset(
                                    "assets/images/Flutter.png",
                                    fit: BoxFit.contain,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      color: backgroundColor, width: 10),
                                ),
                              ),
                              Text(
                                "tools",
                                style: GoogleFonts.poppins(
                                    color: backgroundColor,
                                    fontSize: 50,
                                    fontWeight: FontWeight.w600),
                              ),
                              Container(
                                width: size.width * 0.2,
                                child: Text(
                                  "this is my personal information and all the information are correct. Here I also descuss about my projects.",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black.withOpacity(0.9),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
