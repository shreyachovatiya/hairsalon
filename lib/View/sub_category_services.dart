import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SubCategoryServices extends StatefulWidget {
  const SubCategoryServices({Key? key}) : super(key: key);

  @override
  State<SubCategoryServices> createState() => _SubCategoryServicesState();
}

class _SubCategoryServicesState extends State<SubCategoryServices> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.05),
              Row(
                children: [
                  Container(
                    height: height * 0.08,
                    width: width * 0.08,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black),
                    child: Center(
                      child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            size: height * 0.02,
                            color: Color(0xffD6A354),
                          )),
                    ),
                  ),
                  SizedBox(width: width * 0.2),
                  Text(
                    "Categories",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: height * 0.026),
                  ),
                ],
              ),
              Container(
                height: height * 0.90,
                width: double.infinity,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      height: height * 0.2,
                      width: width * 09,
                      margin: EdgeInsets.only(top: height * 0.01),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black, width: width * 0.01),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Container(
                            height: height * 0.17,
                            width: width * 0.4,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://www.fabmood.com/inspiration/wp-content/uploads/2022/05/haircut-2022-32.jpg"),
                                    fit: BoxFit.cover),
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Hair cut",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text("loreal ",
                                  style: TextStyle(color: Colors.grey)),
                              Row(
                                children: [
                                  Text("Price : ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Text("₹ 500.00")
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
