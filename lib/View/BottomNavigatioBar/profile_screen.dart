import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Profile/contact_us.dart';
import '../Profile/edit_profile.dart';
import '../Profile/my_appointment.dart';
import '../Profile/privacy_policy.dart';
import '../Profile/terms_and_conditions.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List data = [
    "Edit Profile",
    "My Appointment",
    "Contact Us",
    "Privacy Policy",
    "Terms And Conditions"
  ];

  List data1 = [
    "Delete Your Account",
    "Sign Out",
  ];

  List icons = [
    Icons.edit_outlined,
    Icons.app_registration,
    Icons.phone_outlined,
    Icons.privacy_tip_outlined,
    Icons.note_alt_outlined
  ];
  List icons1 = [
    Icons.delete_outline,
    Icons.logout,
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print(size);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.02),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Text(
              "Your Profile",
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
          SizedBox(height: height * 0.01),
          Center(
            child: Text(
              "Shreya Chovatiya",
              style: TextStyle(
                  fontSize: height * 0.028, fontWeight: FontWeight.w500),
            ),
          ),
          Center(
            child: Text(
              "shreyachovatiya171@gmail.com",
              style: TextStyle(fontSize: height * 0.02),
            ),
          ),
          SizedBox(height: height * 0.02),
          Container(
            height: height * 0.6,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: List.generate(
                      5,
                      (index) => Padding(
                        padding: EdgeInsets.symmetric(vertical: 2),
                        child: InkResponse(
                          onTap: () {
                            if (index == 0) {
                              Get.to(EditProfile());
                            } else if (index == 1) {
                              Get.to(MyAppointment());
                            } else if (index == 2) {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Container(
                                        height: height * 0.30,
                                        width: width * 0.30,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Center(
                                          child: Container(
                                            height: height * 0.28,
                                            width: width * 0.65,
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    colors: [
                                                      Color(0xffD6A354),
                                                      Colors.white,
                                                      Color(0xffD6A354)
                                                    ]),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                top: 30.0,
                                                left: 10,
                                                right: 10,
                                              ),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Contact Our Saloon",
                                                        style: TextStyle(
                                                            fontSize:
                                                                height * 0.020,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                      height: height * 0.02),
                                                  Container(
                                                    height: height * 0.08,
                                                    width: width * 0.8,
                                                    decoration: BoxDecoration(
                                                        color: Colors.black,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    child: Row(
                                                      children: [
                                                        Center(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10),
                                                            child: Container(
                                                              height: 60,
                                                              width: 80,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .orangeAccent,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: Icon(
                                                                Icons.person,
                                                                size: height *
                                                                    0.04,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 10),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Customer Care',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        height *
                                                                            0.017),
                                                              ),
                                                              SizedBox(
                                                                height: height *
                                                                    0.01,
                                                              ),
                                                              Text(
                                                                'Customer Support',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Colors
                                                                        .grey,
                                                                    fontSize:
                                                                        height *
                                                                            0.015),
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.02,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () async {
                                                      final Uri url = Uri(
                                                          scheme: 'tel',
                                                          path: '9023591788');
                                                      if (await canLaunchUrl(
                                                          url)) {
                                                        await launchUrl(url);
                                                      } else {
                                                        print(
                                                            'can not launch  url');
                                                      }
                                                    },
                                                    child: Container(
                                                      height: height * 0.05,
                                                      width: width * 0.6,
                                                      decoration: BoxDecoration(
                                                          color: Colors.black,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20)),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Icon(
                                                            Icons.phone,
                                                            color: Colors.white,
                                                            size:
                                                                height * 0.022,
                                                          ),
                                                          SizedBox(
                                                            width: width * 0.01,
                                                          ),
                                                          Text(
                                                            "Call",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Colors
                                                                    .white,
                                                                fontSize:
                                                                    height *
                                                                        0.017),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )),
                                  );
                                },
                              );

                              //Get.to(ContactUs());
                            } else if (index == 3) {
                              Get.to(PrivacyPolicy());
                            } else {
                              Get.to(TermsAndConditions());
                            }
                          },
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: height * 0.05,
                              child: Icon(
                                icons[index],
                                color: Color(0xffD6A354),
                              ),
                            ),
                            title: Text(
                              "${data[index]}",
                              style: TextStyle(
                                  fontSize: height * 0.020,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: List.generate(
                      2,
                      (index) => Padding(
                        padding: EdgeInsets.symmetric(vertical: 2),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: height * 0.05,
                            child: Icon(
                              icons1[index],
                              color: Colors.red,
                            ),
                          ),
                          title: Text(
                            "${data1[index]}",
                            style: TextStyle(
                                fontSize: height * 0.020,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.06,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
