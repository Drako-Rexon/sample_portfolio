import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sample_portfolio/presentation/pages/homepage/core/config/assets/app_image.dart';
import 'package:sample_portfolio/presentation/pages/homepage/core/config/colors/colors.dart';
import 'package:sample_portfolio/presentation/pages/homepage/core/config/helper_functions_ui/helper_functions_ui.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // List<List<String>> service = [
  //   [AppImage.webdev, "Web Development", "blog, e-commerce"],
  //   [AppImage.uiux, "UI/UX Design", "Mobile app, website design"],
  //   [AppImage.mic, "Sound Design", "Voice Over, Beat Making"],
  //   [AppImage.game, "Game Design", "Character Design, Props & Objects"],
  //   [AppImage.photo, "Photography", "portrait, product photography"],
  //   [
  //     AppImage.social,
  //     "Social Media\nHandling",
  //     "Handles Instagram,Facebook,Youtube"
  //   ],
  // ];
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileView(),
      tablet: (BuildContext context) => Container(color: Colors.yellow),
      desktop: (BuildContext context) => desktopView(),
      watch: (BuildContext context) => Container(color: Colors.purple),
    );
  }

  Widget mobileView() {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            60.ph,
            Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: Image.asset(AppImage.personMobile).image,
              ),
            ),
            20.ph,
            const Text(
              'Rayan Adlardard',
              style: TextStyle(
                color: Color(0xFF2B2B2B),
                fontSize: 18,
                fontWeight: FontWeight.w500,
                height: 0.07,
              ),
            ),
            20.ph,
            const Text(
              'Font-end Developer',
              style: TextStyle(
                color: Color(0xFF767676),
                fontSize: 15,
                fontWeight: FontWeight.w400,
                height: 0.11,
              ),
            ),
            20.ph,
            const Divider(color: Color(0xFFF0F0F6)),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return socialIcon();
              },
            ),
            ListView.builder(
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return socialIcon();
              },
            ),
          ],
        ),
      ),
    );
  }

  Container socialIcon() {
    return Container(
      width: 30,
      height: 30,
      decoration: ShapeDecoration(
        color: AppColor.primary,
        shape: const OvalBorder(),
      ),
      child: Center(
        child: Image.asset(
          AppImage.facebook,
          height: 20,
        ),
      ),
    );
  }

  Widget desktopView() {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 229, 229, 229),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Align(
            alignment: Alignment.center,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 70,
                ),
                Container(
                  width: 970,
                  height: 467,
                  color: const Color.fromARGB(255, 255, 254, 254),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "I’m Rayan Adlrdard",
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.w900),
                            ),
                            const Text(
                              "Front-End Developer",
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w900,
                                  color: Color.fromRGBO(255, 180, 0, 1)),
                            ),
                            const Text(
                              "lorem ipsum dolor sit amet, consectetur adipiscing\nipsum dolor sit amet lorem ipsum consectetur\nconsectetur adipiscing lorem adipiscing amit",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 180, 0, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                  child: Text(
                                "HIRE ME ->",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              )),
                            )
                          ],
                        ),
                      ),
                      Image.asset('assets/images/person.png')
                    ],
                  ),
                ),
                //  my services text  and the box

                const SizedBox(
                  width: 970,
                  height: 653,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
