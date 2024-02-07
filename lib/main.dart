import 'package:demo/utils/global_colors.dart';
import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'package:demo/provider/user_provider.dart';
import 'package:demo/screen/splash_screen.dart';
import 'package:demo/services/auth_services.dart';
import 'package:demo/screen/home_screen.dart';
// import 'package:demo/screen/login_screen.dart';
// import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Node Auth',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: GlobalColors.mainColor,
          title: const Text(
            'InTime',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const SplashScreen(),
      ),
    );
  }
}

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   final AuthService authService = AuthService();

//   @override
//   void initState() {
//     super.initState();
//     authService.getUserData(context);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//        debugShowCheckedModeBanner: false,
//       title: 'Flutter Node Auth',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home:const HomeScreen(),
//       // home: Provider.of<UserProvider>(context).user.token.isEmpty ? const LoginScreen() : const HomeScreen(),
//     );
//   }
// }
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   String? token = prefs.getString('x-auth-token');

//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => UserProvider())
//       ],
//       child: token != null ? const MyApp() : const LoginScreen(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SplashScreen(),
//     );
//   }
// }