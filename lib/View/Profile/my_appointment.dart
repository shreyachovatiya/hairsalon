import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hairsalon/CommonWidgets/common_textfield.dart';

class MyAppointment extends StatefulWidget {
  const MyAppointment({Key? key}) : super(key: key);

  @override
  State<MyAppointment> createState() => _MyAppointmentState();
}

class _MyAppointmentState extends State<MyAppointment> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print("${size}");
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: height * 0.10,
                      width: width * 0.10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                      child: Center(
                        child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_new,
                              size: height * 0.03,
                              color: Color(0xffD6A354),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.20,
                    ),
                    Text(
                      "Edit Profile",
                      style: TextStyle(
                          fontSize: height * 0.027,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: height * 0.86,
                      width: double.infinity,
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                            height: height * 0.23,
                            width: width * 09,
                            margin: EdgeInsets.only(top: height * 0.01),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black, width: width * 0.01),
                                borderRadius: BorderRadius.circular(20)),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 3, left: 3),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Row(
                                        // crossAxisAlignment:
                                        //     CrossAxisAlignment.start,
                                        children: [
                                          Text("Name"),
                                          Spacer(),
                                          CommonTextfield2()
                                        ]),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Row(children: [
                                      Text("Date/Time"),
                                      Spacer(),
                                      CommonTextfield2()
                                    ]),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Row(children: [
                                      Text("Services"),
                                      Spacer(),
                                      CommonTextfield2()
                                    ]),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Row(children: [
                                      Text("Sub Services"),
                                      Spacer(),
                                      CommonTextfield2()
                                    ]),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Row(children: [
                                      Text("Price"),
                                      Spacer(),
                                      CommonTextfield2()
                                    ]),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )
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
