import 'package:flutter/material.dart';

class ControlScreen extends StatefulWidget {
  const ControlScreen({super.key});

  @override
  State<ControlScreen> createState() => _ControlScreenState();
}

class _ControlScreenState extends State<ControlScreen> {
  bool isFeedingEnabled = false;
  bool isCleanerEnabled = false;
  bool isWaterPumpEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.control_camera,
          size: 35,
        ),
        title: Text('Control'),
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Smart Feeding",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Switch(
              value: isFeedingEnabled,
              onChanged: (value) {
                setState(() {
                  isFeedingEnabled = value;
                  // Lakukan tindakan yang sesuai saat tombol diubah
                });
              },
              activeTrackColor: Colors.blue[400],
            ),
            SizedBox(height: 20),
            Text(
              "Smart Water Pump",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Switch(
              value: isWaterPumpEnabled,
              onChanged: (value) {
                setState(() {
                  isWaterPumpEnabled = value;
                  // Lakukan tindakan yang sesuai saat tombol diubah
                });
              },
              activeTrackColor: Colors.blue[400],
            ),
          ],
        ),
      ),
    );
  }
}
