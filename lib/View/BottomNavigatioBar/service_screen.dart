import 'package:flutter/material.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  List txt = ["All", "Women", "Men"];
  int box = 0;

  int change = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print(size);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        // leading: Container(
        //   height: height * 0.09,
        //   width: width * 0.09,
        //   decoration: BoxDecoration(
        //       shape: BoxShape.circle,
        //       image:
        //           DecorationImage(image: AssetImage("assets/images/logo.jpg"))),
        // ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(height * 0.02),
          child: Container(
            height: height * 0.06,
            width: width * 0.9,
            margin: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black,
              //  0xff0E2E9ED
            ),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              onTap: (value) {
                setState(() {});
                change = value;
              },
              tabs: List.generate(
                3,
                (index) => change == index
                    ? Container(
                        height: height * 0.04,
                        width: width * 0.3,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.orange.shade400, Colors.white],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          color: change == index
                              ? Colors.yellow.shade800
                              : Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                          txt[index],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )),
                      )
                    : Container(
                        height: height * 0.04,
                        width: width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                          txt[index],
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )),
                      ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15),
        child: Column(
          children: [
            Container(
              height: height * 0.77,
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
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("loreal ",
                                style: TextStyle(color: Colors.grey)),
                            Row(
                              children: [
                                Text("Price : ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
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
    );
  }
}
