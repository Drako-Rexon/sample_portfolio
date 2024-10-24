import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sample_portfolio/presentation/pages/homepage/core/config/assets/app_image.dart';
import 'package:sample_portfolio/presentation/pages/homepage/core/config/colors/colors.dart';
import 'package:sample_portfolio/presentation/pages/homepage/core/config/helper_functions_ui/helper_functions_ui.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
            Divider(
              color: Color(0xFFF0F0F6)
            ),
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
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: Row(
              children: [
                const Column(
                  children: [
                    SizedBox(
                      width: 500,
                      height: 500,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'I’m Rayan Adlrdard',
                              style: TextStyle(
                                color: Color(0xFF2B2B2B),
                                fontSize: 48,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w100,
                                height: 0.03,
                              ),
                            ),
                            TextSpan(
                              text: 'Front-end',
                              style: TextStyle(
                                color: Color(0xFFFFB400),
                                fontSize: 48,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w100,
                                height: 0.03,
                              ),
                            ),
                            TextSpan(
                              text: ' Developer ',
                              style: TextStyle(
                                color: Color(0xFF2B2B2B),
                                fontSize: 48,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w100,
                                height: 0.03,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Image.asset('assets/images/person.png')
              ],
            ),
          )
        ],
      ),
    );
  }
}
