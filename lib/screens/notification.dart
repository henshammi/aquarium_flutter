import 'package:flutter/material.dart';

class NotifScreen extends StatefulWidget {
  const NotifScreen({super.key});

  @override
  State<NotifScreen> createState() => _NotifScreenState();
}

class _NotifScreenState extends State<NotifScreen> {
  List<String> notifications = [
    "The water quality is below normal!",
    "temperature too low!"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.notifications,
          size: 35,
        ),
        title: Text('Notifications'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset(
              "images/itenas.png",
              fit: BoxFit.cover,
              scale: 50,
            ),
          ),
        ],
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue[400],
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            color: Colors.blue[400], // Warna biru pada Card
            child: ListTile(
              title: Text(
                notifications[index],
                style: TextStyle(
                  color: Colors.white, // Warna putih pada teks
                ),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.white, // Warna putih pada ikon
                ),
                onPressed: () {
                  setState(() {
                    notifications.removeAt(index);
                  });
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
