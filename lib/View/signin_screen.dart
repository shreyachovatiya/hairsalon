import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hairsalon/CommonWidgets/common_textfield.dart';
import 'package:hairsalon/View/BottomNavigatioBar/bottom_navigationbar.dart';
import 'package:hairsalon/View/signup_screen.dart';
import '../CommonWidgets/common_button.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print(size);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Center(
          child: SafeArea(
            child: Container(
              height: height,
              width: width,
              child: Column(
                children: [
                  SizedBox(height: width * 0.10),
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
                  SizedBox(height: width * 0.08),
                  Text(
                    "Login",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: width * 0.15),
                  CommonTextfield(
                    prifixicon: Icon(Icons.email_outlined, color: Colors.black),
                    controller: emailcontroller,
                    hint: "Enter your Email",
                  ),
                  SizedBox(height: width * 0.03),
                  CommonTextfield(
                    hint: "Enter your Password",
                    controller: passwordcontroller,
                    prifixicon:
                        Icon(Icons.lock_open_outlined, color: Colors.black),
                  ),
                  // SizedBox(height: 5.h),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot password?",
                          style: TextStyle(
                              fontSize: 13, color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.05),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CommonButton(
                      onpress: () {
                        Get.to(BottomNavigationbarScreen());
                      },
                      height: height * 0.07,
                      width: double.infinity,
                      text: 'Login',
                    ),
                  ),
                  SizedBox(height: width * 0.03),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.black54,
                          // height: 3,
                          thickness: 2,
                          indent: 20,
                          endIndent: 20,
                        ),
                      ),
                      Text("Or sign with"),
                      Expanded(
                        child: Divider(
                          color: Colors.black54,
                          // height: 3,
                          thickness: 2,
                          indent: 20,
                          endIndent: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: width * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/googlee.png',
                        scale: 5,
                      )
                    ],
                  ),
                  SizedBox(height: width * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      SizedBox(width: 5.w),
                      TextButton(
                        onPressed: () {
                          Get.to(SignupScreen());
                        },
                        child: Text(
                          "Signup",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
