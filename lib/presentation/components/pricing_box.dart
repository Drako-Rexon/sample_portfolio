import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sample_portfolio/presentation/pages/homepage/core/config/helper_functions_ui/helper_functions_ui.dart';

class PricingBox extends StatefulWidget {
  PricingBox({
    super.key,
    required this.uplist,
    required this.pop,
    required this.pprice,
    required this.plist,
  });
  // Color pcolor = const Color.fromRGBO(255, 160, 0, 1);
  Container? widget;

  final String pprice;
  // final String ptitle;
  final List<List<List<String>>> plist;

  final List<List<String>> uplist;
  int pop;

  @override
  State<PricingBox> createState() => _PricingBoxState();
}

class _PricingBoxState extends State<PricingBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      width: 310,
      // height: 700,
      child: Column(
        children: [
          Container(
            width: 310,
            color: widget.pop == 1
                ? const Color.fromRGBO(255, 160, 0, 1)
                : const Color.fromRGBO(255, 255, 255, 1),
            height: 40,
            child: Center(child: Text(widget.pop == 1 ? "Most Popular" : "")),
          ),
          25.ph,
          Text.rich(
            // TextAlign.center,
            TextSpan(
              children: [
                TextSpan(
                  text:
                      '${widget.uplist[widget.pop][0]}\n\n', // "Gold" is the biggest and bold
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                      '${widget.uplist[widget.pop][1]} / hour\n', // Price is also big and bold
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const TextSpan(
                  text: '\n\n', // "/hour" is normal, not bold
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: widget.uplist[widget.pop][2], // Normal, grey text
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center, // Centers the text
          ),
          15.ph,
          listofService(),
          30.ph,
          Container(
            width: 169,
            height: 38,
            decoration: widget.pop == 1
                ? BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromRGBO(255, 160, 0, 1),
                  )
                : BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(165, 164, 164, 1),
                          blurStyle: BlurStyle.solid,
                          blurRadius: 5,
                        )
                      ]),
            child: const Center(
                child: Text(
              "Order Now",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
          )
        ],
      ),
    );
  }

  Widget listofService() {
    return SizedBox(
      height: 250, // Specify a fixed height here
      child: ListView.builder(
        itemCount: widget.plist[0].length,
        itemBuilder: (context, i) {
          log("${widget.plist[widget.pop][i][0]} and ${widget.plist[widget.pop][i][1]}");
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 23.0, vertical: 3.6),
            child: Row(
              children: [
                Image(
                  // Adjust the height for better visuals
                  image: AssetImage(widget.plist[widget.pop][i][1]),
                ),
                const SizedBox(width: 20), // Provide some spacing
                Text(
                  widget.plist[widget.pop][i][0],
                  style: TextStyle(
                      color: widget.plist[widget.pop][i][1] ==
                              "assets/services/tick.png"
                          ? Colors.black
                          : Colors.grey),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // Widget listofService() {
  //   return Column(
  //     children: [
  //       GridView.builder(
  //           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //               crossAxisCount: 1, crossAxisSpacing: 3, mainAxisSpacing: 3),
  //           itemCount: widget.plist.length,
  //           itemBuilder: (
  //             context,
  //             i,
  //           ) {
  //             return Row(
  //               // mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Image(
  //                     height: 2,
  //                     image: AssetImage(
  //                       widget.plist[widget.pop][i][0],
  //                     )),
  //                 10.pw,
  //                 Text(widget.plist[widget.pop][i][1])
  //               ],
  //             );
  //           }),
  //     ],
  //   );
  // }
}
