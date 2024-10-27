import 'package:flutter/material.dart';

class ServiceBox extends StatelessWidget {
  const ServiceBox(
      {super.key,
      required this.imgpath,
      required this.data1,
      required this.data2});
  final String imgpath;
  final String data1;
  final String data2;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      height: 30,
      width: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          Image.asset(imgpath),
          const SizedBox(
            height: 10,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "$data1\n", // UI/UX part bold and bigger
                  style: const TextStyle(
                    fontSize: 24, // Bigger size for emphasis
                    fontWeight: FontWeight.bold, // Bold
                    color: Colors.black, // Standard text color
                  ),
                ),
                const TextSpan(text: "\n"),
                TextSpan(
                  text: data2, // Lower part grey and smaller
                  style: const TextStyle(
                    fontSize: 18, // Smaller font size
                    color: Colors.grey, // Grey color
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center, // Centered text
          ),
        ],
      ),
    );
  }
}
