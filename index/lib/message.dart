import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  List<String> SingerNames = [
    "Hymanshu ",
    "Mukul Nagpal",
    "Jashan",
    "Prem",
    "Mayank",
    "Armaan",
    "Ravi",
    "Hymanshu ",
    "Mukul Nagpal",
    "Jashan",
    "Prem",
    "Mayank",
    "Armaan",
    "Ravi",
  ];

  List Ikons = [
    "assets/images/singer1.jpg",
    "assets/images/singer2.jpg",
    "assets/images/singer3.jpg",
    "assets/images/singer4.jpg",
    "assets/images/singer5.jpg",
    "assets/images/singer6.jpg",
    "assets/images/singer7.jpg",
    "assets/images/singer8.jpg",
    "assets/images/singer9.jpg",
    "assets/images/singer10.jpg",
    "assets/images/singer11.jpg",
    "assets/images/singer12.jpg",
    "assets/images/singer13.jpg",
    "assets/images/singer14.jpg",
  ];

  List MonthlyListeners = [
    "Hie Bro!!! What's up",
    "Have a Nice Day!!!",
    "Hello Buddy!!",
    "Kidda Fer!!!",
    "Hie Bro!!! What's up",
    "Have a Nice Day!!!",
    "Hello Buddy!!",
    "Kidda Fer!!!",
    "Hie Bro!!! What's up",
    "Have a Nice Day!!!",
    "Hello Buddy!!",
    "Kidda Fer!!!",
    "Hello Buddy!!",
    "Kidda Fer!!!",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.arrow_back_ios_rounded),
            Text("mukulnagpal11"),
            Icon(Icons.add)
          ],
        ),
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.grey),
              filled: true,
              fillColor: Colors.grey[200],
              contentPadding:
                  EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: SingerNames.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: ClipOval(
                  child: Image.asset(
                    Ikons[index],
                    fit: BoxFit.cover,
                    width: 50,
                    height: 80,
                  ),
                ),
                title: Text(
                  SingerNames[index],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                subtitle: Text(MonthlyListeners[index]),
                trailing: Icon(Icons.camera_alt_outlined),
              );
            },
            separatorBuilder: (context, index) => Divider(),
          ),
        )
      ]),
    );
  }
}
