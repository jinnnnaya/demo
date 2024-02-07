import 'dart:async';

import 'package:demo/screen/login_screen.dart';
import 'package:demo/utils/global_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';
import 'package:demo/screen/home_screen.dart';
import 'package:demo/services/auth_services.dart';
import 'package:provider/provider.dart';
import 'package:demo/provider/user_provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      Get.to( const LoginScreen());
    });
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: const Center(
        child: Text(
          'InTime',
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}



// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);

//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   final AuthService authService = AuthService();

//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(const Duration(seconds: 1), (){
//        initializeScreen(context);
//     });
//   }

// Future<void> initializeScreen(BuildContext context) async {
//   try {
//     print('Checking user data...');

//      AuthService authService = AuthService();
//     await authService.getUserData(context);

//     // Check if user is authenticated
//     var userProvider = Provider.of<UserProvider>(context, listen: false);
//     print('User token: ${userProvider.user.token}');

//     // Use Get.offAll with a conditional expression
//     Get.offAll(
//       userProvider.user.token.isNotEmpty ? const HomeScreen() : const LoginScreen(),
//     );
//   } catch (e) {
//     // Handle any exceptions that might occur during the execution
//     print('Error during initialization: $e');
//     Get.offAll(const LoginScreen());
//   }
// }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: GlobalColors.mainColor,
//       body: const Center(
//         child: Text(
//           'InTime',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 35,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }

