// import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

// ignore: must_be_immutable
class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  List titles = [
    "Signature",
    "Promotion",
    "Meal",
    "Dessert",
    "Kid",
    "Beverage",
  ];

  List boxIcon = [
    Icons.military_tech,
    Icons.percent,
    Icons.restaurant,
    Icons.icecream,
    Icons.child_care,
    Icons.local_bar,
  ];

// final List<Color?> boxColors = [
//   null, // Use null to indicate default color (white)
//   Colors.blue,
//   Colors.green,
//   Colors.yellow,
//   Colors.orange,
//   Colors.purple,
//   Colors.teal,
//   Colors.indigo,
// ];

  @override
  Widget build(BuildContext context) {
    const urlImage =
        'https://cdn.georgeinstitute.org/sites/default/files/styles/width1920_fallback/public/2020-10/world-food-day-2020.png';

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              child: SizedBox(
                width: double.infinity,
                height: 100, // Adjust the height as needed
                // child: Stack(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(urlImage),
                      alignment: Alignment.topCenter,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                // ],
                // ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.orange.withOpacity(0.4),
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: GridView.builder(
                  itemCount: titles.length, // Total number of boxes
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of boxes in each row
                    mainAxisSpacing: 20, // Spacing between rows
                    crossAxisSpacing: 20, // Spacing between boxes
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // Handle onTap action for the box at index
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          //  color: boxColors[index] ?? Colors.pink,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 1,
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              boxIcon[
                                  index], // Use the specified icon from the boxIcon list
                              size: 40,
                              color: Colors.orange, // Set the color of the icon
                            ),
                            Text(
                              titles[index],
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
