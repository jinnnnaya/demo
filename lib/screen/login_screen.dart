import 'package:flutter/material.dart';

import 'package:demo/utils/global_colors.dart';
import 'package:demo/widgets/login.dart';
import 'package:demo/widgets/login_button.dart';
import 'package:demo/widgets/login_social.dart';
import 'package:demo/screen/signup_screen.dart';
import 'package:demo/services/auth_services.dart';
// import 'package:demo/widgets/login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);


 @override
  State<LoginScreen> createState() => _LoginScreenState();

}
class _LoginScreenState extends State<LoginScreen>{
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthService authService = AuthService();

  void signinUser(){
    authService.signInUser(
    context: context,
    email: emailController.text, 
    password: passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'InTime',
                    style: TextStyle(
                      color: GlobalColors.mainColor,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login to your account',
                      style: TextStyle(
                        color: GlobalColors.textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 15),
                    //email input
                    LoginForm(
                      controller: emailController,
                      text: 'Email',
                      obsurce: false,
                      textInputType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 15),
                    //password input
                    LoginForm(
                      controller: passwordController,
                      text: 'Password',
                      obsurce: true,
                      textInputType: TextInputType.text,
                    ),
                    const SizedBox(height: 15),
                    LoginButton(
                      buttonText: 'Sign In',
                      onTap: 
                        signinUser,
                        // print('Sign In');
                        // Add your sign-in logic here
                    ),
                    const SizedBox(height: 15),
                    const LoginSocial(
                      socialText: '-or SignIn with-',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Don\'t have account?',
            ),
            GestureDetector(
              onTap: () {
                // Navigate to the signup screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignupScreen()),
                );
              },
              child: const Text(
                'SignUp here!',
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
