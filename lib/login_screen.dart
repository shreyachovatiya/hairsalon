import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login_screen extends StatefulWidget {
  const Login_screen({Key? key}) : super(key: key);

  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200.h,
            width: 200.w,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(2, 2),
                    blurRadius: 2,
                    spreadRadius: 5,
                  )
                ],
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/images/logo.jpg"))),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text("Login")
        ],
      ),
    );
  }
}
