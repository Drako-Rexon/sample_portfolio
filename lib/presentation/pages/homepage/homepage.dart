import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sample_portfolio/presentation/components/pricing_box.dart';
import 'package:sample_portfolio/presentation/components/service_container.dart';
import 'package:sample_portfolio/presentation/constants/constants.dart';
import 'package:sample_portfolio/presentation/pages/homepage/core/config/app_image.dart';
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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image(image: AssetImage(AppImage.cross)),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Column(
                    children: [
                      90.ph,

                      // todo-leftbox
                      Container(color: Colors.white, height: 1315, width: 200),
                    ],
                  ),
                  50.pw,
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      70.ph,
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
                                        fontSize: 40,
                                        fontWeight: FontWeight.w900),
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
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(255, 180, 0, 1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Center(
                                        child: Text(
                                      "HIRE ME ->",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
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
                        height: 130,
                      ),
                      SizedBox(
                        width: 970,
                        height: 672,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text("My Services",
                                style: TextStyle(
                                    fontSize: 32, fontWeight: FontWeight.w800)),
                            const SizedBox(
                              height: 20,
                            ),
                            const SizedBox(
                              child: Text.rich(
                                TextSpan(
                                  text:
                                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor\n',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text:
                                          'Velit officia consequat duis enim velit mollit.\n',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 16),
                                    ),
                                    TextSpan(
                                      text: 'lorem ipsum',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center, // Centers the text
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            //grid of Services
                            GridView.builder(
                              shrinkWrap: true,
                              itemCount: AppImage.service.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      childAspectRatio: 1.3,
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10),
                              itemBuilder: (context, index) {
                                return ServiceBox(
                                    imgpath: AppImage.service[index][0],
                                    data1: AppImage.service[index][1],
                                    data2: AppImage.service[index][2]);
                              },
                            )
                          ],
                        ),
                      ),
                      20.ph,
                    ],
                  ),
                  50.pw,
                  //navigationbar
                  // todo-rightbox
                  Column(
                    children: [
                      90.ph,
                      Container(color: Colors.white, height: 1315, width: 100),
                    ],
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 90.0),
                  child: SizedBox(
                    // color: Colors.green,
                    height: 1000,
                    width: 970,
                    // color: Colors.blue,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("My Price Plans",
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.w800)),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            child: Column(
                              children: [
                                const Text.rich(
                                  TextSpan(
                                    text:
                                        'Amet minim mollit non deserunt ullamco est sit aliqua dolor\n',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text:
                                            'Velit officia consequat duis enim velit mollit.\n',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16),
                                      ),
                                      TextSpan(
                                        text: 'lorem ipsum',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign:
                                      TextAlign.center, // Centers the text
                                ),
                                30.ph,
                                GridView.builder(
                                  shrinkWrap: true,
                                  itemCount: Constants.pop.length,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          childAspectRatio: 0.5,
                                          crossAxisCount: 3,
                                          crossAxisSpacing: 10,
                                          mainAxisSpacing: 10),
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0),
                                      child: PricingBox(
                                        pprice: "30",
                                        uplist: Constants.packages,
                                        plist: Constants.pricelist,
                                        pop: Constants.pop[index],
                                      ),
                                    );
                                  },
                                )
                              ],
                            ),
                          ),
                        ]),
                  )),

              //reccomendation section
              Padding(
                  padding: const EdgeInsets.only(left: 90.0),
                  child: SizedBox(
                    // color: Colors.green,
                    height: 650,
                    width: 970,
                    // color: Colors.blue,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("Recommendations",
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.w900)),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            child: Column(
                              children: [
                                const Text.rich(
                                  TextSpan(
                                    text:
                                        'Amet minim mollit non deserunt ullamco est sit aliqua dolor\n',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text:
                                            'Velit officia consequat duis enim velit mollit.\n',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16),
                                      ),
                                      TextSpan(
                                        text: 'lorem ipsum',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign:
                                      TextAlign.center, // Centers the text
                                ),
                                30.ph,
                                GridView.builder(
                                  shrinkWrap: true,
                                  itemCount: Constants.recclist.length,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          childAspectRatio: 1,
                                          crossAxisCount: 3,
                                          crossAxisSpacing: 10,
                                          mainAxisSpacing: 10),
                                  itemBuilder: (context, index) {
                                    log(Constants.recclist[index][0]);
                                    return Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0),
                                      child: Container(
                                        color: Colors.white,
                                        width: 310,
                                        child: Padding(
                                          padding: const EdgeInsets.all(30),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Image(
                                                  image: AssetImage(
                                                      AppImage.rating)),
                                              10.ph,
                                              Text(
                                                Constants.recclist[index][1],
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                              25.ph,
                                              const Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae nulla diam in ac dictum a urna viverra morbi. Morbi donec amet....",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 14),
                                              ),
                                              10.ph,
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Image(
                                                      height: 70,
                                                      image: AssetImage(
                                                          Constants.recclist[
                                                              index][0])),
                                                  20.pw,
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                          Constants.recclist[
                                                              index][2],
                                                          style: const TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                      10.ph,
                                                      Text(
                                                        Constants
                                                            .recclist[index][3],
                                                        style: const TextStyle(
                                                            color: Colors.grey),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                60.ph,
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child:
                                        Image(image: AssetImage(AppImage.dot)))
                              ],
                            ),
                          ),
                        ]),
                  )),

              //education section

              Padding(
                  padding: const EdgeInsets.only(left: 90.0),
                  child: SizedBox(
                    // color: Colors.green,
                    height: 970,
                    width: 970,
                    // color: Colors.blue,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("Education",
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.w900)),
                          const SizedBox(
                            height: 20,
                          ),
                          const SizedBox(
                            child: Column(
                              children: [
                                Text.rich(
                                  TextSpan(
                                    text:
                                        'Amet minim mollit non deserunt ullamco est sit aliqua dolor\n',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text:
                                            'Velit officia consequat duis enim velit mollit.\n',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16),
                                      ),
                                      TextSpan(
                                        text: 'lorem ipsum',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign:
                                      TextAlign.center, // Centers the text
                                ),
                              ],
                            ),
                          ),
                          30.ph,
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            width: 970,
                            child: Column(children: [
                              educationbox("University Of Toronto",
                                  'Certificate Of Web Training'),
                              const Divider(
                                thickness:
                                    1, // Change to 2 if thicker divider is required
                                color: Colors.grey,
                              ),
                              //education 2
                              15.ph,
                              educationbox("GGSIPU",
                                  "BTech Computer Science Engineering"),
                              const Divider(
                                thickness:
                                    1, // Change to 2 if thicker divider is required
                                color: Colors.grey,
                              ),
                              15.ph,
                              educationbox("University Of Toronto",
                                  'Certificate Of Web Training'),
                            ]),
                          )
                        ]),
                  )),
              40.ph,
              //work history

              Padding(
                  padding: const EdgeInsets.only(left: 90.0),
                  child: SizedBox(
                    // color: Colors.green,
                    height: 970,
                    width: 970,
                    // color: Colors.blue,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("Work History",
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.w900)),
                          const SizedBox(
                            height: 20,
                          ),
                          const SizedBox(
                            child: Column(
                              children: [
                                Text.rich(
                                  TextSpan(
                                    text:
                                        'Amet minim mollit non deserunt ullamco est sit aliqua dolor\n',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text:
                                            'Velit officia consequat duis enim velit mollit.\n',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16),
                                      ),
                                      TextSpan(
                                        text: 'lorem ipsum',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign:
                                      TextAlign.center, // Centers the text
                                ),
                              ],
                            ),
                          ),
                          30.ph,
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            width: 970,
                            child: Column(children: [
                              educationbox("Junior Web Desingner",
                                  'Certificate Of Web Training'),
                              const Divider(
                                thickness:
                                    1, // Change to 2 if thicker divider is required
                                color: Colors.grey,
                              ),
                              //education 2
                              15.ph,
                              educationbox("Junior Web Designer",
                                  "Certificate Of Web Training"),
                              const Divider(
                                thickness:
                                    1, // Change to 2 if thicker divider is required
                                color: Colors.grey,
                              ),
                              15.ph,
                              educationbox("Senior Web Designer",
                                  'Certificate Of Web Training'),
                            ]),
                          )
                        ]),
                  )),
              40.ph,
              Padding(
                padding: const EdgeInsets.only(left: 90.0),
                child: SizedBox(
                    // color: Colors.green,
                    width: 970,
                    height: 860,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              30.ph,
                              const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Leave Us Your Info",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              40.ph,
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 40),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                width: 500,
                                height: 640,
                                child: Column(
                                  children: [
                                    const Align(
                                      alignment: Alignment.center,
                                      child: TextField(
                                        maxLines: 2,
                                        decoration: InputDecoration(
                                          labelText:
                                              "Your Full Name (Required)",
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    const Align(
                                      alignment: Alignment.center,
                                      child: TextField(
                                        maxLines: 2,
                                        decoration: InputDecoration(
                                          labelText:
                                              "Your Full Name (Required)",
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    const Align(
                                      alignment: Alignment.center,
                                      child: TextField(
                                        maxLines: 2,
                                        decoration: InputDecoration(
                                          labelText:
                                              "Your Full Name (Required)",
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    const Align(
                                      alignment: Alignment.center,
                                      child: TextField(
                                        maxLines: 2,
                                        decoration: InputDecoration(
                                          labelText:
                                              "Your Full Name (Required)",
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.amber,
                                        ),
                                        child: const Text("SEND MESSAGE"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        //contact info sec
                        50.pw,
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              30.ph,
                              const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Contact Information",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              40.ph,
                              // Section 1: Location
                              buildContactSection(
                                icon: Icons.location_on,
                                details: [
                                  buildContactDetail('Country:', 'Bangladesh'),
                                  buildContactDetail('City:', 'Dhaka'),
                                  buildContactDetail(
                                      'Street:', '35 Vhatara, Badda'),
                                ],
                              ),
                              const SizedBox(height: 20),

                              // Section 2: Communication
                              buildContactSection(
                                icon: Icons.email,
                                details: [
                                  buildContactDetail(
                                      'Email:', 'Youremail@gmail.com'),
                                  buildContactDetail('Skype:', '@Yourusername'),
                                  buildContactDetail(
                                      'Telegram:', '@Yourusername'),
                                ],
                              ),
                              const SizedBox(height: 20),

                              // Section 3: Phone numbers
                              buildContactSection(
                                icon: Icons.phone,
                                details: [
                                  buildContactDetail(
                                      'Support Services:', '15369'),
                                  buildContactDetail(
                                      'Office:', '+58 (021) 356 587 235'),
                                  buildContactDetail(
                                      'Personal:', '+58 (021) 356 587 235'),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Container(
                  width: 970,
                  height: 290,
                  decoration: BoxDecoration(
                      // color: Colors.green,
                      image: DecorationImage(
                          fit: BoxFit.fill, image: AssetImage(AppImage.map))),
                ),
              ),
              40.ph,
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Container(
                  width: 970,
                  height: 140,
                  decoration: BoxDecoration(
                      // color: Colors.green,
                      image: DecorationImage(
                          fit: BoxFit.fill, image: AssetImage(AppImage.logo1))),
                ),
              ),
              35.ph,
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Container(
                  width: 970,
                  height: 60,
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      "2021 All Rights Reserved.Ojjomedia",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ),
              30.ph
            ],
          ),
        ),
      ),
    );
  }
}

///---------------------------------------------------------///

Widget buildContactSection({
  required IconData icon,
  required List<Widget> details,
}) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(20)),
    width: 500,
    height: 200,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        20.ph,
        CircleAvatar(
          backgroundColor: Colors.amber,
          radius: 18,
          child: Icon(icon, color: Colors.black, size: 30),
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: details,
        ),
      ],
    ),
  );
}

Widget buildContactDetail(String label, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 40),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
              color: Colors.grey[500],
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
        const SizedBox(width: 5),
        Text(
          value,
          style: TextStyle(
              color: Colors.grey[500],
              fontWeight: FontWeight.w500,
              fontSize: 15),
        ),
      ],
    ),
  );
}

Widget educationbox(
  String name,
  String certificate,
) {
  return Container(
      width: 970,
      color: Colors.white,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  25.ph,
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  12.ph,
                  Text(
                    'Student',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
              // Date Box
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  'Jan 1016 - Dec 2021', // Update with correct dates
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 12), // Spacing before divider

        // Divider

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 100.0),
          child: Divider(
            thickness: 1, // Change to 2 if thicker divider is required
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 12), // Spacing after divider

        // Certificate Section
        Text(
          certificate,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8), // Spacing before description
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 130.0),
          child: Text(
            textAlign: TextAlign.center,
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Amet dapibus nibh ut faucibus nunc, egestas id amet porttitor. '
            'Pulvinar qulsque sed amet, nulla nunc. Eleifend sodales posuere '
            'fusce tempus etiam et pellentesque. Molestie risus enim neque eget dui.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
            ),
          ),
        ),
        15.ph,
      ]));
}
