import 'package:flutter/material.dart';
import 'package:hairsalon/CommonWidgets/common_button.dart';

import '../../CommonWidgets/common_textfield.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController dobcontroller = TextEditingController();
  TextEditingController phonenumbercontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print(size);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                        fontSize: height * 0.027, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: height * 0.02),
                Center(
                  child: CircleAvatar(
                    radius: height * 0.08,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.person,
                      color: Color(0xffD6A354),
                      size: height * 0.07,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.02),
                Text(
                  "Full Name",
                  style: TextStyle(
                      fontSize: height * 0.020, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: height * 0.005),
                CommonTextfield(
                  controller: namecontroller,
                  hint: "Enter your Name",
                ),
                SizedBox(height: height * 0.020),
                Text(
                  "Date of Birth",
                  style: TextStyle(
                      fontSize: height * 0.020, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: height * 0.005),
                CommonTextfield(
                  controller: dobcontroller,
                  hint: "Enter your DOB",
                ),
                SizedBox(height: height * 0.020),
                Text(
                  "Mobile Number",
                  style: TextStyle(
                      fontSize: height * 0.020, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: height * 0.005),
                CommonTextfield(
                  controller: phonenumbercontroller,
                  hint: "Enter your mobile number",
                ),
                SizedBox(height: height * 0.020),
                Text(
                  "Change Password",
                  style: TextStyle(
                      fontSize: height * 0.020, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: height * 0.005),
                CommonTextfield(
                  controller: passwordcontroller,
                  hint: "Change Password",
                ),
                SizedBox(height: height * 0.020),
                Text(
                  "Confirm Password",
                  style: TextStyle(
                      fontSize: height * 0.020, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: height * 0.005),
                CommonTextfield(
                  controller: confirmpasswordcontroller,
                  hint: "Confirm Password",
                ),
                SizedBox(height: height * 0.015),
                Center(
                  child: CommonButton(
                    onpress: () {},
                    height: height * 0.06,
                    width: width * 0.20,
                    text: "Update",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
