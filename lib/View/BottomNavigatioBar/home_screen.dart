import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hairsalon/CommonWidgets/common_textfield.dart';

import '../signin_screen.dart';
import '../sub_category_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> category = [
    {'cimg': 'assets/images/chair.png', 'cname': 'Haircut'},
    {'cimg': 'assets/images/chair.png', 'cname': 'Hairspa'},
    {'cimg': 'assets/images/chair.png', 'cname': 'Haircolor'},
    {'cimg': 'assets/images/chair.png', 'cname': 'Hairstyle'},
    {'cimg': 'assets/images/chair.png', 'cname': 'Massage'},
    {'cimg': 'assets/images/chair.png', 'cname': 'Beard'},
  ];
  List<Map<String, dynamic>> offers = [
    {
      'oimg':
          'https://lakehamiltonpublish.com/wp-content/uploads/2018/09/hair-salon-banner.jpg',
    },
    {
      'oimg':
          'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/hair-and-beauty-salon-promo-design-template-72e2199ae0c9c89bcc2d62deb57c67ca_screen.jpg?ts=1675419139',
    },
    {
      'oimg':
          'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/hair-salon-special-offer-discount-banner-design-template-34f3aee8ea279d7493751dddc0042a33_screen.jpg?ts=1561539354',
    },
    {
      'oimg':
          'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/orange-hair-salon-new-offer-banner-design-template-43bd544fec5a10acba54a52b6f73bd72_screen.jpg?ts=1655442915',
    },
  ];

  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.only(top: 35, left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/chair.png'),
                    radius: 30,
                    backgroundColor: Colors.black,
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Hi',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Text('Jhonson',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                        ],
                      ),
                      Text('Lorem ipum is simply',
                          style: TextStyle(color: Colors.grey, fontSize: 10)),
                    ],
                  ),
                  Spacer(),
                  Container(
                      height: height * 0.05,
                      width: width * 0.10,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications,
                              color: Colors.white,
                              size: height * 0.03,
                            )),
                      ))
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              CommonTextfield(
                controller: search,
                prifixicon: Icon(
                  Icons.search_rounded,
                  size: 30,
                  color: Colors.black,
                ),
                hint: 'Find our services here.... ',
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Row(
                  children: [
                    Text(
                      'Services',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.02,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                        category.length,
                        (index) => Column(
                              children: [
                                InkResponse(
                                  onTap: () {
                                    Get.to(SubCategoryServices());
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(left: 10),
                                    height: height * 0.10,
                                    width: width * 0.20,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                category[index]['cimg']))),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Text(
                                  category[index]['cname'],
                                  style: TextStyle(
                                      fontSize: width * 0.035,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ))),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Offers',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: height * 0.02),
                    ),
                  ],
                ),
              ),
              Container(
                height: height * 0.44,
                width: double.infinity,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: offers.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 10),
                      height: height * 0.25,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(offers[index]['oimg']),
                              fit: BoxFit.cover)),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
