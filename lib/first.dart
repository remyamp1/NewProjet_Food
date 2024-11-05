import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/images1.jpeg"),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Center(
              child: Text(
                'Fast delivery at\nyour doorstep',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "home delivery and online reservation\n   system for restaurants & cafe",
                style: TextStyle(
                    fontSize: 18,
                    color: const Color.fromARGB(255, 236, 235, 235)),
              ),
            ),
            SizedBox(height: 150),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 40,
                width: 320,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Center(
                      child: Text(
                        "Let's Explore",
                        style: TextStyle(color: Colors.green),
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
