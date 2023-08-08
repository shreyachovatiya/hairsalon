import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hairsalon/CommonWidgets/common_textfield.dart';
import 'CommonWidgets/common_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    print(size);
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 40.h),
                Container(
                  height: 120.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(1, 1),
                          blurRadius: 1,
                          spreadRadius: 3,
                        )
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo.jpg"))),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Login",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 100.h),
                CommonTextfield(
                  controller: emailcontroller,
                  hint: "Email",
                ),
                SizedBox(height: 10.h),
                CommonTextfield(hint: "Password"),
                SizedBox(height: 5.h),
                Padding(
                  padding: EdgeInsets.only(left: 220),
                  child: Text(
                    "Forget password?",
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                  ),
                ),
                SizedBox(height: 20.h),
                CommonButton(
                  onpress: () {},
                  height: 70.h,
                  width: 390.w,
                  text: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    SizedBox(width: 5.w),
                    Text(
                      "Signup",
                      style: TextStyle(fontWeight: FontWeight.bold),
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
