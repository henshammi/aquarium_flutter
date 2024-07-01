import 'package:aquariumapp/screens/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 440,
                height: 320,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage("images/splash_top.png"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 150),
                child: Container(
                  width: 440,
                  height: 366,
                  child: Image(
                    image: AssetImage("images/logo.png"),
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    width: 440,
                    height: 226,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage("images/splash_bot.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 260, top: 120),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 140,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.white,
                            width: 3,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
