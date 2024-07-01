// import 'package:aquariumapp/screens/autofeed.dart';
import 'package:aquariumapp/screens/levelwater.dart';
import 'package:aquariumapp/screens/temperature.dart';
import 'package:aquariumapp/screens/waterquality.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List fishes = ["Nemo", "Goldfish", "Paradise", "Paradise"];
  List catergories = [
    "Temperature",
    "Quality of Water",
    "Level of Water",
    // "Auto Feed",
  ];
  List subtitle = [
    "Check the water temperature level",
    "Check the quality of water  ",
    "Check the water volume level",
    // "Perform automatic feed settings"
  ];
  List<IconData> icons = [
    Icons.thermostat,
    Icons.opacity,
    Icons.waves,
    // Icons.auto_awesome,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.dashboard,
          size: 35,
        ),
        title: Text('Dashboard'),
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Discover",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.blue[400],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      hintStyle: TextStyle(color: Colors.white),
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.search),
                      suffixIconColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Features",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: catergories.length,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    Widget destinationScreen;

                    switch (index) {
                      case 0:
                        destinationScreen = TemperatureScreen();
                        break;
                      case 1:
                        destinationScreen = WaterQualityScreen();
                        break;
                      case 2:
                        destinationScreen = LevelWaterScreen();
                        break;
                      // case 3:
                      //   destinationScreen = AutoFeedScreen();
                      //   break;
                      default:
                        destinationScreen = Container();
                        break;
                    }

                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => destinationScreen,
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 7, horizontal: 15),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.blue[400],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              catergories[index],
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    subtitle[index],
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  icons[index],
                                  size: 60,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
