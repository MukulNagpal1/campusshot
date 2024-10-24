import "package:flutter/material.dart";

class Userlogin extends StatelessWidget {
  const Userlogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 200,
              ),
              Text(
                "Instagram",
                style: TextStyle(fontSize: 50, fontFamily: "Siry"),
              ),
              SizedBox(
                height: 40,
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/profilePic.jpeg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Mukul Nagpal",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 280,
                height: 45,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Log in",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade500,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(7))))),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Switch accounts",
                style: TextStyle(
                    color: Colors.blue.shade600, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 150,
              ),
              Divider(
                color: Colors.grey.shade300,
                height: 4,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.grey.shade400),
                  ),
                  Text(
                    "Sign up",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )
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
        ));
  }
}
