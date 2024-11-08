import "package:flutter/material.dart";

class Profileedit extends StatefulWidget {
  const Profileedit({super.key});

  @override
  State<Profileedit> createState() => _ProfileeditState();
}

class _ProfileeditState extends State<Profileedit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Cancel"),
          Text(
            "Edit Profile",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "Done",
            style: TextStyle(color: Colors.blue),
          )
        ],
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/images/post1.jpg"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Change Profile Photo",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    "Name",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 88,
                  ),
                  Text(
                    "Mukul Nagpal",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    "UserName",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    "@MukulNagpal11",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    "Website",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 75,
                  ),
                  Text(
                    "Website",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    "Bio",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 115,
                  ),
                  Text(
                    "Flutter Developer",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.all(13.0),
              child: Align(
                child: Text(
                  "Switch to Professional account",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(13.0),
              child: Align(
                child: Text(
                  "Private Information",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                alignment: Alignment.topLeft,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    "Email",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    "mukulnagpal@gmail.com",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    "Phone",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 95,
                  ),
                  Text(
                    "+91 73575-70779",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    "Gender",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Text(
                    "Male",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
