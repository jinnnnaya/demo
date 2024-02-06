import 'package:demo/utils/global_colors.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class LoginSocial extends StatelessWidget {
  final String socialText;
  const LoginSocial({Key? key, required this.socialText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            socialText,
            style: TextStyle(
              color: GlobalColors.textColor,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Row(
            children: [
              //fb
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/fb.png',
                    height: 30,
                  ),
                ),
              ),
              //google
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/google.png',
                    height: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
