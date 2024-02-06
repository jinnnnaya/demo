
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:demo/widgets/login.dart';
import 'package:demo/widgets/login_social.dart';
import 'package:demo/widgets/login_button.dart';
import 'package:demo/services/auth_services.dart';
import 'package:demo/utils/global_colors.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);
  
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}
class _SignupScreenState extends State<SignupScreen>{
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  // final TextEditingController confirmpasswordController = TextEditingController();
  final AuthService authService = AuthService();
  
  void signupUser(){
    authService.signUpUser(
    context: context,
    email: emailController.text, 
    password: passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: GlobalColors.mainColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.white,
          ),
        ),
      ),
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
                      'Create your account',
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
                  //  LoginForm(
                  //     controller: confirmpasswordController,
                  //     text: 'Confirm Password',
                  //     obsurce: true,
                  //     textInputType: TextInputType.text,
                  //   ),
                    const SizedBox(height: 15),
                     LoginButton(
                      buttonText: 'Sign Up',
                      onTap: signupUser,
                        // print('Sign Up');
                        // Add your sign-in logic here
                      
                    ),
                    const SizedBox(height: 15),
                    const LoginSocial(
                      socialText: '-or SignUp with-',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
