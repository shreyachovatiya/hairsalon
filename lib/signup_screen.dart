import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    print(size);
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
          Text("Signup")
        ],
      ),
    );
  }
}
