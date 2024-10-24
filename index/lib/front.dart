import 'package:flutter/material.dart';

class SimilarInsta extends StatelessWidget {
  SimilarInsta({super.key});

  final List<String> imagepaths = [
    'assets/images/post1.jpg',
    'assets/images/post2.jpg',
    'assets/images/post3.jpg',
    'assets/images/post4.jpg',
    'assets/images/post5.jpg',
    'assets/images/post6.jpg',
    'assets/images/post7.jpg',
    'assets/images/post8.jpg',
    'assets/images/post9.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios),
          backgroundColor: Colors.white,
          title: Row(children: [
            Text(
              "mukulnagpal1",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 24),
            ),
            Container(
              child: Icon(Icons.arrow_drop_down),
            ),
            SizedBox(width: 25),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                child: Icon(Icons.alternate_email_outlined),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 15.0),
              child: Container(
                child: Icon(Icons.add_circle_outline_rounded),
              ),
            ),
            Container(
              child: Icon(Icons.density_medium),
            )
          ])),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.white60,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    width: 180,
                    //color: Colors.purple,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/profilePic.jpeg"),
                          radius: 60,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mukul Nagpal",
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text("Flutter Developer")
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 35.0, right: 7.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Profiledetails("6", "Posts"),
                                SizedBox(
                                  width: 8,
                                ),
                                Profiledetails("358", "Followers"),
                                SizedBox(
                                  width: 8,
                                ),
                                Profiledetails("1,170", "Followings")
                              ],
                            ),
                          ),
                          // Container(
                          //   child: Row(
                          //     children: [
                          //       Expanded(
                          //         child: Container(
                          //           height: 50,
                          //           child: ElevatedButton(
                          //               style: ElevatedButton.styleFrom(
                          //                   backgroundColor: Colors.blue,
                          //                   foregroundColor: Colors.white),
                          //               onPressed: () {},
                          //               child: Text("Follow")),
                          //         ),
                          //       ),
                          //       SizedBox(
                          //         width: 10,
                          //       ),
                          //       Container(
                          //         height: 50,
                          //         width: 30,
                          //         decoration: BoxDecoration(
                          //             border: Border.all(
                          //                 color: Colors.blue, width: 2),
                          //             color: Colors.white,
                          //             shape: BoxShape.circle),
                          //         child: Icon(
                          //           Icons.arrow_downward,
                          //           color: Colors.blue,
                          //         ),
                          //       ),
                          //       SizedBox(
                          //         width: 10,
                          //       )
                          //     ],
                          //   ),
                          // )
                        ],
                      ),
                    ),
                    // color: Colors.orange,
                  ))
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 152,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.grey.shade300),
                      onPressed: () {},
                      child: Text("Edit profile"),
                    ),
                  ),
                  Container(
                    width: 152,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.grey.shade300),
                        onPressed: () {},
                        child: Text("Share profile")),
                  ),
                  Container(
                    width: 66,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade300,
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      onPressed: () {},
                      label: Text(""),
                      icon: Icon(
                        Icons.person_add_alt_outlined,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
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
                    } else {
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(4),
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.shade100,
                            ),
                            child: Icon(
                              Icons.add,
                              size: 40,
                              color: Colors.black,
                            ),
                          ),
                          Text("New")
                        ],
                      );
                    }
                  },
                )),

            SizedBox(height: 10),
            // Container(
            //   child: Column(
            //     children: [
            //       Divider(
            //         color: Colors.grey,
            //         thickness: 1,
            //       )
            //     ],
            //   ),
            // ),
            // Container(
            //   height: 30,
            //   child: Column(
            //     children: [
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceAround,
            //         children: [
            //           Text(
            //             "E-mail",
            //             style: TextStyle(
            //                 color: Colors.blue, fontWeight: FontWeight.bold),
            //           ),
            //           Container(
            //             height: 30, // Height of the vertical line
            //             width: 1, // Thickness of the vertical line
            //             color: Colors.grey, // Color of the line
            //           ),
            //           Text(
            //             "Site",
            //             style: TextStyle(
            //                 color: Colors.blue, fontWeight: FontWeight.bold),
            //           ),
            //           Container(
            //             height: 30, // Height of the vertical line
            //             width: 1, // Thickness of the vertical line
            //             color: Colors.grey, // Color of the line
            //           ),
            //           Text(
            //             "Phone",
            //             style: TextStyle(
            //                 color: Colors.blue, fontWeight: FontWeight.bold),
            //           )
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            // Container(
            //   child: Column(
            //     children: [
            //       Divider(
            //         color: Colors.grey,
            //         thickness: 1,
            //       )
            //     ],
            //   ),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.view_module_rounded),
                Icon(Icons.video_collection_rounded),
                Icon(Icons.person_add_alt_outlined),
              ],
            ),

            SizedBox(
              height: 5,
            ),

            Expanded(
                child: Container(
              //color: Colors.yellow,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: imagepaths.length,
                  itemBuilder: (context, index) {
                    return Container(
                      //decoration: BoxDecoration(
                      //  color: Colors.grey.shade400,
                      //borderRadius: BorderRadius.circular(100)),
                      margin: EdgeInsets.all(1),
                      height: 100,
                      width: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          imagepaths[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      //color: Colors.red,
                    );
                  }),
            ))
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 75,
        child: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.ondemand_video_sharp,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundImage: AssetImage("assets/images/profilePic.jpeg"),
              ),
              label: "")
        ]),
      ),
    );
  }
}

Widget Profiledetails(String text1, text2) {
  return Column(
    children: [
      Text(
        text1,
        style: TextStyle(fontSize: 24),
      ),
      Text(
        text2,
        style: TextStyle(fontSize: 14),
      ),
      SizedBox(
        width: 5,
      )
    ],
  );
}
