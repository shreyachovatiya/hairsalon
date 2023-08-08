import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hairsalon/CommonWidgets/common_button.dart';
import 'package:hairsalon/CommonWidgets/common_textfield.dart';
import 'package:hairsalon/View/BottomNavigatioBar/bottom_navigationbar.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController phonenumbercontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  int radio = 0;
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
                  SizedBox(height: 40.h),
                  Container(
                    height: 120.h,
                    width: 120.w,
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
                  SizedBox(height: height * 0.02),
                  Text(
                    "Signup",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: height * 0.06),
                  CommonTextfield(
                    controller: namecontroller,
                    hint: "Enter your Name",
                  ),
                  SizedBox(height: height * 0.02),
                  Container(
                    height: 65.h,
                    width: 390.w,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black)),
                    child: Row(
                      children: [
                        SizedBox(width: 10.w),
                        Text(
                          "Gender",
                          style: TextStyle(
                              fontSize: 14, color: Colors.grey.shade700),
                        ),
                        Spacer(),
                        Image.asset(
                          "assets/images/male.png",
                          scale: 15,
                        ),
                        Radio(
                          activeColor: Colors.black,
                          value: 1,
                          groupValue: radio,
                          onChanged: (value) {
                            setState(() {
                              radio = value!;
                            });
                          },
                        ),
                        SizedBox(width: width * 0.08),
                        Image.asset(
                          "assets/images/female.png",
                          scale: 7,
                        ),
                        Radio(
                          activeColor: Colors.black,
                          value: 2,
                          groupValue: radio,
                          onChanged: (value) {
                            setState(() {
                              radio = value!;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  CommonTextfield(
                    controller: emailcontroller,
                    hint: "Enter your Email",
                  ),
                  SizedBox(height: height * 0.02),
                  CommonTextfield(
                    controller: phonenumbercontroller,
                    hint: "Enter your mobile number",
                  ),
                  SizedBox(height: height * 0.02),
                  CommonTextfield(
                    controller: passwordcontroller,
                    hint: "Password",
                  ),
                  SizedBox(height: height * 0.02),
                  CommonTextfield(
                    controller: confirmpasswordcontroller,
                    hint: "Confirm Password",
                  ),
                  SizedBox(height: height * 0.02),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CommonButton(
                      onpress: () {
                        Get.to(BottomNavigationbarScreen());
                      },
                      height: height * 0.07,
                      width: double.infinity,
                      text: 'SignUp',
                    ),
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
