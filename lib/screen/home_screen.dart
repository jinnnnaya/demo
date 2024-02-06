import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:demo/services/auth_services.dart';
import 'package:demo/provider/user_provider.dart';
// import 'package:demo/utils/global_colors.dart';
import 'package:demo/widgets/bottom_bar.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen ({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    void signOutUser(BuildContext context) {
    AuthService().signOut(context);
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
      //  appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: GlobalColors.mainColor,
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     icon: const Icon(
      //       Icons.menu,
      //       size: 20,
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(user.id),
            Text(user.email),
            ElevatedButton(
              onPressed: () => signOutUser(context),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(color: Colors.white),
                ),
                minimumSize: MaterialStateProperty.all(
                  Size(MediaQuery.of(context).size.width / 2.5, 50),
                ),
              ),
              child: const Text(
                "Sign Out",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
       bottomNavigationBar: const BottomBar(),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import 'package:demo/services/auth_services.dart';
// import 'package:demo/provider/user_provider.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   late UserProvider userProvider;
  
//   @override
//   void initState() {
//     super.initState();
//     userProvider = Provider.of<UserProvider>(context, listen: false);
//     fetchData();
//   }

//   Future<void> fetchData() async {
//     await AuthService().getUserData(context);
//     // Check if the user is authenticated and update the state accordingly
//     if (!userProvider.isAuthenticated()) {
//       // If not authenticated, navigate to the login screen
//       AuthService().signOut(context);
//     }
//   }

//   void signOutUser(BuildContext context) {
//     AuthService().signOut(context);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final user = userProvider.user;
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(user.id),
//             Text(user.email),
//             ElevatedButton(
//               onPressed: () => signOutUser(context),
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all(Colors.orange),
//                 textStyle: MaterialStateProperty.all(
//                   const TextStyle(color: Colors.white),
//                 ),
//                 minimumSize: MaterialStateProperty.all(
//                   Size(MediaQuery.of(context).size.width / 2.5, 50),
//                 ),
//               ),
//               child: const Text(
//                 "Sign Out",
//                 style: TextStyle(color: Colors.white, fontSize: 16),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }