// import 'package:demo/screen/home_screen.dart';
import 'package:demo/utils/global_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:demo/widgets/placeholder.dart';
// import 'package:demo/utils/global_colors.dart';
import 'package:get/get.dart';
import 'package:demo/widgets/dashboard.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  // int _currentIndex = 0;

  // void _handleTabSelection(int index) {
  //   setState(() {
  //     _currentIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    print('Selected Index in build: ${controller.selectedIndex.value}');
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          // height: 70,
          currentIndex: controller.selectedIndex.value,
          onTap: (index) {
            print('Selected Index: $index');
            controller.selectedIndex.value = index;
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: 'Order',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          selectedItemColor:
              GlobalColors.mainColor, // Color of selected item icon and text
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    // Replace PlaceholderWidget with your actual screens
    Dashboard(),
    const PlaceholderWidget(title: 'Order Screen'),
    const PlaceholderWidget(title: 'Favorites Screen'),
    const PlaceholderWidget(title: 'Profile Screen'),
  ];
}
