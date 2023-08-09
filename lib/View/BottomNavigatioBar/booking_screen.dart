import 'package:flutter/material.dart';
import 'package:hairsalon/CommonWidgets/common_button.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  int select = 0;
  int select1 = 0;
  int select2 = 0;
  int select3 = 0;
  int select4 = 0;

  List<Map<String, dynamic>> subcategory = [
    {"simg": "assets/images/", "sname": "Haircut", "sreview": '5.0'},
    {"simg": "assets/images/", "sname": "Hairspa", "sreview": '4.0'},
    {"simg": "assets/images/", "sname": "Haircolor", "sreview": '4.5'},
    {"simg": "assets/images/", "sname": "Hairstyle", "sreview": '3.0'},
    {"simg": "assets/images/", "sname": "Massage", "sreview": '4.2'},
    {"simg": "assets/images/", "sname": "Beard", "sreview": '4.7'},
  ];

  List date = ["24", "25", "26", "27", "28"];
  List day = ["Mon", "Tus", "Wed", "Ths", "Fri"];

  List mtime = ["9:30", "10:00", "10:30", "11:00", "11:30"];
  List afternoontime = ["1:00", "1:30", "2:00", "2:30", "3:00"];
  List eveningtime = ["3:30", "4:00", "4:30", "5:00", "5:30"];
  List nighttime = ["6:30", "7:00", "7:30", "8:00", "8:30"];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print("${size}");
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 30, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.01),
            Text(
              "Categories:",
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: height * 0.02),
            ),
            SizedBox(height: height * 0.01),
            SizedBox(
              height: height * 0.16,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: height * 0.1,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                      ),
                      Text("${subcategory[index]['sname']}"),
                      Container(
                        height: height * 0.02,
                        width: width * 0.12,
                        decoration: BoxDecoration(color: Colors.green),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "${subcategory[index]['sreview']}",
                              style: TextStyle(color: Colors.white70),
                            ),
                            Icon(Icons.star,
                                color: Colors.white, size: height * 0.02)
                          ],
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            Text(
              "Time Slots:",
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: height * 0.02),
            ),
            SizedBox(height: height * 0.01),
            Container(
              height: height * 0.12,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return InkResponse(
                    onTap: () {
                      setState(() {
                        select = index;
                      });
                    },
                    child: Container(
                      height: height * 0.03,
                      width: width * 0.2,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: select == index ? Colors.black : Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "May",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: select == index
                                    ? Colors.white
                                    : Colors.black),
                          ),
                          Text("${date[index]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: select == index
                                      ? Colors.white
                                      : Colors.black)),
                          Text("${day[index]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: select == index
                                      ? Colors.white
                                      : Colors.black))
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: height * 0.01),
            Text(
              "Morning",
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: height * 0.02),
            ),
            SizedBox(height: height * 0.01),
            SizedBox(
              height: height * 0.05,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return InkResponse(
                    onTap: () {
                      setState(() {
                        select1 = index;
                      });
                    },
                    child: Container(
                      height: height * 0.4,
                      width: width * 0.17,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color:
                              select1 == index ? Colors.black : Colors.white),
                      child: Center(
                          child: Text(
                        "${mtime[index]}",
                        style: TextStyle(
                            color:
                                select1 == index ? Colors.white : Colors.black),
                      )),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: height * 0.01),
            Text(
              "Afternoon",
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: height * 0.02),
            ),
            SizedBox(height: height * 0.01),
            SizedBox(
              height: height * 0.05,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return InkResponse(
                    onTap: () {
                      setState(() {
                        select2 = index;
                      });
                    },
                    child: Container(
                      height: height * 0.4,
                      width: width * 0.17,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color:
                              select2 == index ? Colors.black : Colors.white),
                      child: Center(
                          child: Text(
                        "${afternoontime[index]}",
                        style: TextStyle(
                            color:
                                select2 == index ? Colors.white : Colors.black),
                      )),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: height * 0.01),
            Text(
              "Evening",
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: height * 0.02),
            ),
            SizedBox(height: height * 0.01),
            SizedBox(
              height: height * 0.05,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return InkResponse(
                    onTap: () {
                      setState(() {
                        select3 = index;
                      });
                    },
                    child: Container(
                      height: height * 0.4,
                      width: width * 0.17,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color:
                              select3 == index ? Colors.black : Colors.white),
                      child: Center(
                          child: Text(
                        "${eveningtime[index]}",
                        style: TextStyle(
                            color:
                                select3 == index ? Colors.white : Colors.black),
                      )),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: height * 0.01),
            Text(
              "Night",
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: height * 0.02),
            ),
            SizedBox(height: height * 0.01),
            SizedBox(
              height: height * 0.05,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return InkResponse(
                    onTap: () {
                      setState(() {
                        select4 = index;
                      });
                    },
                    child: Container(
                      height: height * 0.4,
                      width: width * 0.17,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color:
                              select4 == index ? Colors.black : Colors.white),
                      child: Center(
                          child: Text(
                        "${nighttime[index]}",
                        style: TextStyle(
                            color:
                                select4 == index ? Colors.white : Colors.black),
                      )),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: height * 0.02),
            CommonButton(
              onpress: () {},
              height: height * 0.05,
              width: double.infinity,
              text: "Book Appoinment",
            )
          ],
        ),
      ),
    );
  }
}
