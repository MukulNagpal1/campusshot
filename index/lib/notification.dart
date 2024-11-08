import "package:flutter/material.dart";

class NotificationBar extends StatefulWidget {
  NotificationBar({super.key});

  @override
  State<NotificationBar> createState() => _NotificationBarState();
}

class _NotificationBarState extends State<NotificationBar> {
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
        title: Center(
          child: Text(
            "Notification",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    height: 3,
                  ),
                  Text(
                    "Follow Request",
                    style: TextStyle(fontSize: 18),
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
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          subtitle: Text(MonthlyListeners[index]),
                          trailing: Icon(Icons.camera_alt_outlined),
                        );
                      },
                      separatorBuilder: (context, index) => Divider(),
                    ),
                  )
                ])),
      ),
    );
  }
}
