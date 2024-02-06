// import 'package:flutter/cupertino.dart'; //apple
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key, required this.controller, required this.text, required this.textInputType, required this.obsurce}) : super(key: key);
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obsurce;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(top: 3, left: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 7,
          )
        ],
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: obsurce,
        decoration:InputDecoration(
          hintText: text,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(0),
          hintStyle: const TextStyle(
            height: 1,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
