import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Icon(
              Icons.camera_alt_rounded,
              size: 30,
            ),
            SizedBox(
              width: 65,
            ),
            Center(
              child: Text(
                "Instagram",
                style: TextStyle(fontFamily: "Siry", fontSize: 34),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Icon(
              Icons.tv,
              size: 30,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.messenger_rounded,
              size: 30,
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Divider(
            color: Colors.grey.shade300,
            height: 4,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 120,
              //color: Colors.brown,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 9 + 1,
                itemBuilder: (context, index) {
                  List<String> images = [
                    "assets/images/shimla1.jpeg",
                    "assets/images/hostelDays.jpeg",
                    "assets/images/shimla.jpeg",
                    "assets/images/delhi.jpeg",
                    "assets/images/gurugram.jpeg",
                    "assets/images/basant.jpeg",
                    "assets/images/natureEssential.jpeg",
                    "assets/images/freshers.jpg",
                    "assets/images/farewell.jpg",
                  ];

                  List<String> title = [
                    "Shimla",
                    "Hostel life",
                    "vacations",
                    "Delhi",
                    "Gurugram",
                    "Basant",
                    "Nature Essentials",
                    "Freshers",
                    "farewell 2k22"
                  ];
                  if (index < images.length) {
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(4),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(images[index]),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle,
                              color: Colors.orange),
                        ),
                        Text(title[index])
                      ],
                    );
                  }
                  // else {
                  //   return Column(
                  //     children: [
                  //       Container(
                  //         margin: EdgeInsets.all(4),
                  //         height: 80,
                  //         width: 80,
                  //         decoration: BoxDecoration(
                  //           shape: BoxShape.circle,
                  //           color: Colors.grey.shade100,
                  //         ),
                  //         child: Icon(
                  //           Icons.add,
                  //           size: 40,
                  //           color: Colors.black,
                  //         ),
                  //       ),
                  //       Text("New")
                  //     ],
                  //   );
                  // }
                },
              )),
          Divider(
            color: Colors.grey.shade300,
            height: 4,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/profilePic.jpeg"),
            ),
            title: Text("Mukul Nagpal"),
            subtitle: Text("Hanumangarh, Rajasthan"),
            trailing: Icon(Icons.drag_indicator),
          ),
          Image.asset("assets/images/post4.jpg")
        ],
      ),
    );
  }
}
