import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protfolio_web_app/Screens/SubPages/semiwhiteportion.dart';
import 'package:protfolio_web_app/Screens/widgets/contact_widgets.dart';
import 'package:protfolio_web_app/constants.dart';
import 'package:protfolio_web_app/onHover.dart';
import 'package:protfolio_web_app/utils/colors.dart';
import 'package:protfolio_web_app/utils/images.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: semiWhiteColor,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1100) {
            print(constraints.maxWidth);
            return const UiDesign();
          }
          return Container();
        },
      ),
    );
  }
}

class UiDesign extends StatefulWidget {
  const UiDesign({super.key});

  @override
  State<UiDesign> createState() => _UiDesignState();
}

class _UiDesignState extends State<UiDesign> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(200)),
              ),
              child: bluePortion(size),
            ),

            Container(
              color: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                  color: semiWhiteColor,
                  borderRadius: const BorderRadius.only(bottomRight: Radius.circular(200)),
                ),
                child: SemiWhitePortion(size: size),
              ),
            ),

            Container(
              color: backgroundColor,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                    bottomRight: Radius.circular(200),
                  ),
                ),
                child: whitePortion(size),
              ),
            ),
            // Container(
            //   height: 800,
            //   width: size.width,
            //   color: backgroundColor,
            //   child: PlayVideo(size),
            // ),
            Container(
              height: 500,
              width: size.width,
              color: backgroundColor,
              child: lastPortion(size),
            ),

            // Container(
            //   color: Colors.amber,
            //   height: 400, width: size.width,
            //   child: Expanded(
            //     child: Container(
            //       height: 120, width: size.width,
            //       color: Colors.greenAccent,
            //       child: ListView.builder(
            //           controller: _scrollController1,
            //           scrollDirection: Axis.horizontal,
            //           shrinkWrap: true,
            //           itemCount: appUis.length,
            //           padding: const EdgeInsets.symmetric(vertical: 20),
            //           itemBuilder: (context, index) {
            //             return Container(
            //               margin: const EdgeInsets.all(10),
            //               decoration: BoxDecoration(
            //                 color: Colors.deepOrange,
            //                 borderRadius: BorderRadius.circular(25),
            //                 border: Border.all(color: Colors.white),
            //               ),
            //               child: ClipRRect(
            //                 borderRadius: BorderRadius.circular(25),
            //                 child: CachedNetworkImage(
            //                   imageUrl: appUis[index], width: 500, fit: BoxFit.cover,
            //                   placeholder: (context, url) => const CircularProgressIndicator(),
            //                   errorWidget: (context, url, error) => const Icon(Icons.error),
            //                 ),
            //               ),
            //             );
            //           }),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget lastPortion(Size size) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(children: [
                Container(
                  height: 70, width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.white, width: 15),
                  ),
                ),

                Positioned(
                  top: 35,
                  child: Container(
                    height: 70, width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: backgroundColor, width: 15),
                    ),
                  ),
                ),
              ]),
              const SizedBox(width: 50),

              Container(
                height: 50, width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: SizedBox(
                    height: 30, width: 30,
                    child: Image.asset(Images.facebook, color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(width: 50),

              Container(
                height: 50, width: 50,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
                child: Center(
                  child: SizedBox(
                    height: 30, width: 30,
                    child: Image.asset(Images.whatsapp, fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(width: 50),

              Container(
                height: 50, width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: SizedBox(
                    height: 30, width: 30,
                    child: Image.asset(Images.instagram, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),

          const Divider(color: Colors.white, thickness: 2, endIndent: 200, indent: 200),
        ],
      ),
    );
  }

  Widget whitePortion(Size size) {
    return SizedBox(
      width: size.width,
      child: Stack(
        children: [
          Positioned(
            top: -450, right: -150,
            child: Container(
              height: 700, width: 700,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(700),
                border: Border.all(color: AppColor.semiWhiteColor, width: 100),
              ),
            ),
          ),
          Positioned(
            left: 300,
            top: 250,
            child: SizedBox(
              width: size.width * 0.45,
              child: Text(
                "contact with me",
                style: GoogleFonts.poppins(
                  color: backgroundColor.withOpacity(0.05),
                  fontSize: 170,
                  fontWeight: FontWeight.w900,
                  textStyle: const TextStyle(
                    height: 0.9,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -350,
            right: size.width * 0.3,
            child: Container(
              height: 700, width: 700,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(700),
                border: Border.all(color: AppColor.backgroundColor, width: 100),
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.only(top: 500, left: 450, bottom: 270),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100, width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: AppColor.backgroundColor, width: 10),
                      ),
                    ),

                    Text(
                      "contact me",
                      style: GoogleFonts.poppins(
                        color: backgroundColor,
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                      ),
                    ),

                    SizedBox(
                      width: size.width * 0.2,
                      child: Text(
                        "this is my personal information and all the information are correct. Here I also descuss about my projects.",
                        style: GoogleFonts.poppins(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),

                    const SizedBox(height: 50),

                    const ContactWidgets(icon: Icons.call, title: "+880 1677696277"),
                    const SizedBox(height: 10),

                    const ContactWidgets(icon: Icons.location_on, title: "Barura, Cumilla, Bangladesh"),
                    const SizedBox(height: 10),

                    const ContactWidgets(icon: Icons.mail_outline, title: "mehedi05739@gmail.com"),
                  ],
                ),
                const SizedBox(width: 20),

                Container(
                  width: size.width * 0.3,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.3), offset: const Offset(5, 5), blurRadius: 20)],
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: backgroundColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          style: GoogleFonts.poppins(
                            color: backgroundColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                            hintStyle: GoogleFonts.poppins(
                              color: backgroundColor.withOpacity(0.5),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),

                      Container(
                        decoration: BoxDecoration(
                          color: backgroundColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          style: GoogleFonts.poppins(
                            color: backgroundColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Name",
                            contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                            hintStyle: GoogleFonts.poppins(
                              color: backgroundColor.withOpacity(0.5),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),

                      Container(
                        decoration: BoxDecoration(
                          color: backgroundColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          maxLines: 5,
                          style: GoogleFonts.poppins(
                            color: backgroundColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Message",
                            contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                            hintStyle: GoogleFonts.poppins(
                              color: backgroundColor.withOpacity(0.5),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),

                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "send",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget bluePortion(Size size) {
    return SizedBox(
      //height: size.height * 2,
      width: size.width,

      child: Stack(
        children: [
          Positioned(
            left: 250,
            bottom: size.height * 0.6,
            child: SizedBox(
              width: size.width * 0.4,
              child: Text(
                "my services",
                style: GoogleFonts.poppins(
                  color: Colors.white.withOpacity(0.1),
                  fontSize: 150,
                  fontWeight: FontWeight.w900,
                  textStyle: const TextStyle(height: 0.9, letterSpacing: 1),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -250,
            right: 150,
            child: Container(
              height: 700,
              width: 700,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(700),
                border: Border.all(color: Colors.white, width: 100),
              ),
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 250, top: 50),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: backgroundColor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.15),

              Padding(
                padding: const EdgeInsets.only(left: 250, top: 50),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "do with passion",
                              style: GoogleFonts.poppins(
                                color: Colors.white70,
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.5,
                              child: Text(
                                "Develop Beautiful App & Website",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 80,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            SizedBox(height: size.height * 0.01),

                            SizedBox(
                              width: size.width * 0.40,
                              child: Text(
                                "do with passion do with passion do with passion ,do with passion do with passion do with passiondo with passion do with passion do with passion",
                                style: GoogleFonts.poppins(
                                  fontStyle: FontStyle.normal,
                                  color: Colors.white54,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),

                            SizedBox(
                              width: size.width * 0.1,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.public,
                                    color: Colors.white,
                                    size: 28,
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.gif_outlined,
                                    color: Colors.white,
                                    size: 28,
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.support_agent_outlined,
                                    color: Colors.white,
                                    size: 28,
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.local_fire_department_outlined,
                                    color: Colors.white,
                                    size: 28,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Positioned(
                          bottom: size.height * 0.05,
                          left: 10,
                          child: Text(
                            "modern",
                            style: GoogleFonts.poppins(
                              color: Colors.white.withOpacity(0.1),
                              fontSize: 150,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Center(
                      child: Stack(
                        children: [
                          Container(
                            height: 300,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Container(
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: backgroundColor,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 150,
                            child: Container(
                              height: 300,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200),
                                //color: Colors.white,
                                border: Border.all(
                                    color: backgroundColor, width: 50),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.2,
              ),
              Stack(
                children: [
                  Positioned(
                    left: -200,
                    child: Container(
                      height: 700,
                      width: 700,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(700),
                        //color: Colors.white,
                        border: Border.all(color: Colors.white, width: 80),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 250, top: 50),
                    height: size.height * 0.7,
                    width: size.width * 0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: cardColor,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: SizedBox(
                            height: size.height * 0.5,
                            child: Image.asset(Images.image, fit: BoxFit.contain),
                          ),
                        ),

                        Expanded(
                          flex: 6,
                          child: Container(
                            padding: const EdgeInsets.only(right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Flutter Developer",
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(color: Colors.white60),
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "hi, my name is Mehedi Hasan",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 80,
                                      fontWeight: FontWeight.w700,
                                      textStyle: const TextStyle(height: 1.2),
                                  ),
                                ),
                                Text(
                                  "do with passion do with passion do with passion ,do with passion do with passion do with passiondo with passion do with passion do with passion",
                                  style: GoogleFonts.poppins(
                                    fontStyle: FontStyle.normal,
                                    color: Colors.white54,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 20,
                    child: Container(
                      height: size.width * 0.4,
                      child: Text(
                        "about me",
                        style: GoogleFonts.poppins(
                          color: Colors.white.withOpacity(0.05),
                          fontSize: 150,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.4,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 290,
                ),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.white, width: 10),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 290,
                  top: 10,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "services",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    SizedBox(
                      width: 500,
                      child: Text(
                        "these services are available by me, and I will 100% gerenty these services",
                        style: GoogleFonts.poppins(
                            color: Colors.white60,
                            fontSize: 18,
                            fontWeight: FontWeight.w200),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 50),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Spacer(),
                    OnHoverButton(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          //height: 200,
                          padding: const EdgeInsets.all(20),
                          width: 300,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColor.cardColor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                offset: const Offset(5, 5),
                                blurRadius: 20,
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.laptop, size: 50, color: Colors.white),
                                  const SizedBox(width: 10),

                                  Text(
                                    "web app",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 36,
                                        fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),

                              Text(
                                "these services are available by me, and I will 100% gerenty these services",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 50),

                    OnHoverButton(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: cardColor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                offset: const Offset(5, 5),
                                blurRadius: 20,
                              )
                            ]),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.phone_android, size: 50, color: Colors.white),
                                const SizedBox(width: 10),

                                Text(
                                  "android app",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 36,
                                      fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),

                            Text(
                              "these services are available by me, and I will 100% gerenty these services. professional android developer. these services are available by me, and I will 100% gerenty these services.",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 50),

                    OnHoverButton(
                      child: Container(
                        //height: 200,
                        padding: const EdgeInsets.all(20),
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: cardColor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                offset: const Offset(5, 5),
                                blurRadius: 20,
                              )
                            ]),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.laptop, size: 50, color: Colors.white),
                                const SizedBox(width: 10),

                                Text(
                                  "ui design",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 36,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),

                            Text(
                              "these services are available by me, and I will 100% gerenty these services",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.2,
              )
            ],
          ),
        ],
      ),
    );
  }
}
