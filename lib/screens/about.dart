import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.person,
          size: 35,
        ),
        title: Text('About'),
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
        padding: const EdgeInsets.only(top: 40, left: 50, right: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage('images/SAMI.jpeg'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Henshammi Adha Fernandi',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'An experienced Flutter developer with a passion for creating innovative and responsive mobile applications.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Send Email',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                ),
                SizedBox(width: 10.0),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.link,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Portofolio',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
